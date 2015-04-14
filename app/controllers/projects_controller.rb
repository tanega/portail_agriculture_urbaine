class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]


  def index
    @projects = Project.all
    @features = Array.new

    @projects.each do |project|
      @features << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [project.longitude.to_f, project.latitude.to_f]
        },
        properties: {
          :title => project.name,
          :description => project.description,
          :status => project.status.name,
          :category => project.typology.category,
          :typology => project.typology,
          :'marker-color' => project.set_marker_color,
          :'marker-symbol' => project.set_marker_icons,
          :'marker-size' => 'medium'
        }
      }
    end

    @geojson = {type: "FeatureCollection", features: @features}

    respond_to do |format|
      format.html
      format.json {render json: @geojson}
      format.geojson { render json: @geojson }
    end
  end

  def show
    

  end

  def new
    @project = Project.new
    @typologies = Typology.all
  end

  def edit

  end

  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        format.html { redirect_to @projects, notice: "Le projet a été créé avec succès!" }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
    if @project.update(project_params)
      format.html { redirect_to @projects, notice: "Le projet a bien été mis à jour." }
    else
      format.html { render action: 'edit' }
    end
  end
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html {redirect_to projects_url}
    end
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :latitude, :longitude, :project_owner_id, :collective_id, :land_owner, :creation_date, :status_id, :status_date, :typology_id, :how_to_participate, :created_at, :updated_at)
    end

end
