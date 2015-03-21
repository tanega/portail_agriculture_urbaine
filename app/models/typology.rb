class Typology < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 250 }
  validates :subtypology_id, presence: true
end
