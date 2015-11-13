get '/rounds/:id' do
  if !@round
    @round = Round.new(deck_id: params[:id], user_id: session[:user_id])
    if @round.save
      @deck = Deck.find(params[:id])
      @points_for_card = {}
      @cards = @deck.cards.all.shuffle!
      @cards.each { |card| @points_for_card[card.id] = 2 }
      @card = @cards.pop
    else
      "Game not started"
    end
  else
    @card = @cards.shuffle!.pop
  end
  erb :'/rounds/round'
end

put '/rounds' do
  @round.total_guesses += 1
  if params[:guess] == @card.answer
    @round.points += @points_for_card[:@card.id] * @card.difficulty
    @points_for_card[:@card.id] == 2 ? @round.correct += 1 : nil
  else
    @points_for_card[@card.id] > 0 ? @points_for_card[@card.id] += -1 : nil
    @cards << @card
  end

  if @cards.length > 0
    redirect "/rounds/#{ @deck.id }"
  else
    @round.save
    redirect "/rounds/over"
  end
end

get '/rounds/over/' do
  erb :'/rounds/over'
end
