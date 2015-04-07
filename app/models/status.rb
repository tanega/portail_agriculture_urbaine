class Status < ActiveRecord::Base
	has_many :project
	validates :name, presence: true, length: { maximum: 250 }
end
