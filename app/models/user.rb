class User < ActiveRecord::Base
	has_many :events
	has_many :events_users
	# has_many :events, through: :users
	validates_presence_of :first_name, :last_name, :email, :password, :address
	validates_uniqueness_of :email
	validates_presence_of :password_confirmation, on: :create
	validates_confirmation_of :password
	geocoded_by :address
	after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
	has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#", icon: "35x35#" }, default_url: "/images/:style/missing.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


	def full_name
		"#{first_name} #{last_name}"
	end
end