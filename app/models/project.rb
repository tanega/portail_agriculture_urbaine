class Project < ActiveRecord::Base
  has_many :typology_relations, foreign_key: "project_id", dependent: :destroy
  has_many :typologies, through: :typology_relations, source: :typology
  has_many :tag_relations, foreign_key: "project_id", dependent: :destroy
  has_many :tags, through: :tag_relations, source: :tag
  belongs_to :status
  belongs_to :typology
  validates :name,  presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 250 }
  validates :how_to_participate, length: { maximum: 250 }
  validates_presence_of :typology

  # Add a tag.
  def add_tag(tag)
    tag_relations.create(tag_id: tag.id)
  end

  # Remove a tag.
  def remove_tag(tag)
    tag_relations.find_by(tag_id: tag.id).destroy
  end

  # Returns true if the current project has the tag.
  def has_tag?(tag)
    tags.include?(tag)
  end


  # Add a typology.
  def add_typology(typology)
    typology_relations.create(typology_id: typology.id)
  end

  # Remove a typology.
  def remove_typology(typology)
    typology_relations.find_by(typology_id: typology.id).destroy
  end

  # Returns true if the current project has the typology.
  def has_typology?(typology)
    typologies.include?(typology)
  end

  #Set marker color
  def set_marker_color
    if self.typology.category == "Jardins"
      return "#6D4C41"
    elsif self.typology.category == "Ressources pour l'AU"
      return "#CDDC39"
    else 
      return "#80CBC4"
    end
  end

  #Set marker icons
  def set_marker_icons
    if self.typology.category == "Jardins"
      return "star"
    elsif self.typology.category == "Ressources pour l'AU"
      return "garden"
    else 
      return "library"
    end
  end

end
