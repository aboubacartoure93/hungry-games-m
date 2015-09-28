class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  has_many :events_users
  has_many :users, through: :events_users
  after_create :add_current_user_to_event_users
  scope :upcoming, -> { where("start > ? AND start < ?", Time.now, Time.now + 6.months) }
  scope :past, -> { where("start < ?", Time.now) }
  scope :joinable, -> { select('events.*, count(users.id) as user_count').joins(:users).group('events.id').having('user_count > 1 AND user_count < 6')}
  scope :roulettable, -> { upcoming.joinable }

  def add_current_user_to_event_users
  	users << user
  end

  def upcoming?
    start > Time.now ? true : false
  end

  def description
  	if Time.now < start
  		message = "are hanging out on "
  	else
  		message = "had a great time on "
  	end
  	message += start.strftime("%b. %d at %l:%M%P")
  end

end
