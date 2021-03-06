class PhasesController < ApplicationController
  before_action :set_project, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  before_action :set_phase, only: [:show, :edit, :update, :destroy]

  # GET /phases
  # GET /phases.json
  def index
    @phases = Phase.where(project_id: params[:project_id])
  end

  # GET /phases/1
  # GET /phases/1.json
  def show
    @team = @phase.team
  end

  # GET /phases/new
  def new
    sequence = @project.phases.order(:sequence).last[:sequence]
    if sequence == (Project::STAGES.length - 1)
      redirect_to project_path(@project.id), notice: 'New phase cannot be created'
    else
      @phase = Phase.new(sequence: sequence + 1)
    end
  end

  # GET /phases/1/edit
  def edit

  end

  # POST /phases
  # POST /phases.json
  def create
    @phase = Phase.new(phase_params)

    respond_to do |format|
      if @phase.save
        format.html { redirect_to project_phase_path(@project.id, @phase), notice: 'Phase was successfully created.' }
        format.json { render :show, status: :created, location: @phase }
      else
        format.html { render :new }
        format.json { render json: @phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phases/1
  # PATCH/PUT /phases/1.json
  def update
    respond_to do |format|
      if @phase.update(phase_params)
        format.html
        format.json { render :nothing => true }
      else
        format.html { render :edit }
        format.json { render json: @phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phases/1
  # DELETE /phases/1.json
  def destroy
    @phase.destroy
    respond_to do |format|
      format.html { redirect_to project_phases_path(@project.id), notice: 'Phase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end
    def set_phase
      @phase = Phase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phase_params
      params.require(:phase).permit(:project_id, :start_date, :end_date, :interval, :sequence, :long_term_vision, :kpi_s, :criteria, :bottlenecks, :problem_definition, :solutions, :long_term, :key_benefits, :vision, :test_first, :sprint_amount, :proof_of_value, :background, :note)
    end
end
