post '/rounds' do 
  round = Round.new(deck_id: params[:deck_id], user_id: session[:user_id])
  if round.save
    redirect "/rounds/#{round.id}/next_card"
  else
    redirect "/?error=ThisIsBroke"
  end
end

get '/rounds/:id/next_card' do 
  #Logic to get / show next card lives here
end

get '/rounds/:id' do
  #ZM: Since HTTP is stateless, @round will never exists in this context.
  @round = Round.new(deck_id: params[:id], user_id: session[:user_id])

  #ZM: What happens if the round does not save?  
  #ZM: I would also be very weary of saving in a "get" request
  if @round.save
    #ZM: Restful conventions say that the ID here is for the round. Why are we trying to 
    #access the Deck by it? is the route off or is the operation off?
    @deck = Deck.find(params[:id])
    @cards = @deck.cards.shuffle
    @card = @cards.pop
  else 
    #Handle invalid save case
  end

  erb :'/rounds/round'
end

put '/rounds/:id' do
  @is_correct = params[:is_correct]

  if @is_correct == "2"

    @round = Round.find(params[:id])

    @round.total_guesses += 1
    @deck = @round.deck 
    @cards = @deck.cards

    @index_separator = @cards.first.id - 1
    @card = Card.find(params[:card_id])
    @card.is_correct?( params[:guess] )
    @points = params[:points]

    if @card.is_correct?( params[:guess] ) 
      @round.update_points(@card)
    else
      @round.degregate_points(@card)
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
