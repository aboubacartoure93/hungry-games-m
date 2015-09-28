module ApplicationHelper

	def current_user
		session[:user_id] ? User.find(session[:user_id]) : nil
	end

	def roulettable_events
		Event.roulettable.length > 0
	end

end
