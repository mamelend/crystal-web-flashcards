get '/rounds/:id' do
  if !@round
    @round = Round.new(deck_id: params[:id], user_id: session[:user_id])
    if @round.save
      @deck = Deck.find(params[:id])
      @points = "P"
      @cards = @deck.cards.shuffle
      @cards.each { @points += "2" }
      @card = @cards.pop
      @is_correct = "2"
    else
      "Game not started"
    end
  end
  erb :'/rounds/round'
end

put '/rounds/:id' do
  @is_correct = params[:is_correct]
  if @is_correct == "2"
    @round = Round.find(params[:id])
    @round.total_guesses += 1
    @deck = Deck.find(@round.deck_id)
    @cards = @deck.cards
    @index_separator = @cards.first.id - 1
    @card = Card.find(params[:card_id])
    @points = params[:points]
    if params[:guess].downcase == @card.answer.downcase
      @round.points += @points[@card.id - @index_separator].to_i * @card.difficulty
      @points[@card.id - @index_separator].to_i  == 2 ? @round.correct += 1 : nil
      @points[@card.id - @index_separator] = "3"
      @is_correct = "1"
    else
      @points[@card.id - @index_separator].to_i > 0 ? @points[@card.id - @index_separator] = (@points[@card.id - @index_separator].to_i - 1).to_s : nil
      @is_correct = "0"
    end

    @round.save

  end

    if @is_correct == "3"
      @round = Round.find(params[:id])
      @deck = Deck.find(@round.deck_id)
      @cards = @deck.cards
      @index_separator = @cards.first.id - 1
      @points = params[:points]
      @cards = @deck.cards.reject { |card| @points[card.id - @index_separator] == "3" }
      @is_correct = "2"
      if @cards.count > 0
        @cards = @cards.shuffle
        @card = @cards.pop
        erb :'/rounds/round'
      else
        erb :'/rounds/over'
      end
    elsif @is_correct == "1" || @is_correct == "0"
      erb :'/rounds/round'
    end
end
