class TagRelation < ActiveRecord::Base
  validates :project_id, presence: true
  validates :tag_id, presence: true
end
