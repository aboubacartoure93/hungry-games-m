class Restaurant < ActiveRecord::Base
	has_many :events
	geocoded_by :address
	after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

	CUISINES = ["BBQ", "Mexican", "Ukranian", "Cajun", "French", "Trinidadian", "Indian", "Japanese", "Burgers", "German", "Steakhouse", "Asian", "Thai", "Ethiopian"]

	def display_cuisine
		CUISINES[cuisine]
	end

	def self.find_by_cuisine_name(cuisine)
		options = CUISINES.map(&:downcase)
		restaurants = Restaurant.where(cuisine: options.index(cuisine.downcase))
		restaurants = Restaurant.all if restaurants.empty?
		restaurants
	end

end
