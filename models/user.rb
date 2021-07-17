class User < ActiveRecord::Base
	validates :name, :mobile_number, :pincode, presence: true

	has_many :zones, dependent: :destroy
end
