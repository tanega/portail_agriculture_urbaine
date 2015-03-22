class Tag < ActiveRecord::Base
  has_many :tag_relations, foreign_key: "tag_id", dependent: :destroy
  has_many :projects, through: :tag_relations, source: :project
  validates :name, presence: true, length: { maximum: 250 }
end
