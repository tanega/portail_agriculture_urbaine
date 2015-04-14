class SubTypology < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 250 }
  has_many :typologies, :foreign_key => "subtypology_id"
end
