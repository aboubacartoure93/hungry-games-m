class YelpController < ApplicationController
	
	def index
		client = Yelp::Client.new({ consumer_key: ENV['PZPit6ccaHktVwsnR09GZg'],
                            consumer_secret: ENV['8d49pTZ4ELUKqjsjBcJo8uV3vcY'],
                            token: ENV['OvyPlsPtgCcU7vl-KiShXEfuqCILTdaz'],
                            token_secret: ENV['svVFtQN-7thhoUGnqebWr3tcXMY']
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