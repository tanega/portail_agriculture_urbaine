class Project < ActiveRecord::Base
  validates :name,  presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 250 }
  validates :how_to_participate, length: { maximum: 250 }
end
