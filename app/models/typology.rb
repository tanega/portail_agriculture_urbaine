class Typology < ActiveRecord::Base
  # has_many :typology_relations, foreign_key: "typology_id", dependent: :destroy
  has_many :projects#, through: :typology_relations, source: :project
  belongs_to :sub_typology
  validates :name, presence: true, length: { maximum: 250 }
  validates :subtypology_id, presence: true
end
