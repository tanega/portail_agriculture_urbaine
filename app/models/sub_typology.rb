class SubTypology < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 250 }
end
