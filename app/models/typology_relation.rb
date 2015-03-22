class TypologyRelation < ActiveRecord::Base
  validates :project_id, presence: true
  validates :typology_id, presence: true
end
