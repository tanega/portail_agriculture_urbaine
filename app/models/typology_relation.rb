class TypologyRelation < ActiveRecord::Base
  belongs_to :project
  belongs_to :typology
  validates :project_id, presence: true
  validates :typology_id, presence: true
end
