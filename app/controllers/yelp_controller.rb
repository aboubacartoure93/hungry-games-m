class YelpController < ApplicationController
	
	def index
		client = Yelp::Client.new({ consumer_key: ENV['HUNGRY_GAMES_CONSUMER_KEY'],
                            consumer_secret: ENV['HUNGRY_GAMES_CONSUMER_SECRET'],
                            token: ENV['HUNGRY_GAMES_TOKEN'],
                            token_secret: ENV['HUNGRY_GAMES_TOKEN_SECRET']
                          })
		
		if params[:cuisine]
			query = params[:cuisine]
		else
			query = "food"
		end
		@restaurants = client.search('10004', { term: query }).businesses
		@restaurants.map do |restaurant|
			record = Restaurant.find_by(yelp_id: restaurant.id)
			if record 
				record
			else
				restaurant
			end
		end
	end

end