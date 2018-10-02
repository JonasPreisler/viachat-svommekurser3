class Events::Days::ProgramsController < ApplicationController
  before_action :require_login, only: [:index, :edit, :update, :destroy]
  before_action :set_program, only: [:show, :edit, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :set_day, only: [:show, :new, :edit, :create, :update, :destroy]
  layout 'guest', only: [:show]

  # GET /programs
  # GET /programs.json
  def index
    @program = Program.all.order(sorting: :desc)
    @programs = current_user.programs.all.limit(10).order('sorting ASC')
    @programs_2 = current_user.programs.all.offset(10).limit(10).order('sorting ASC')
  end

  # GET /programs/1
  # GET /programs/1.json
  def show
    @speakers = @program.speakers
    @day = @program.day
  end

  # GET /programs/new
  def new
    @program = Program.new
    @day = Day.find(params[:day_id])
    @events = @day.event
    @event = @day.event
    @program.speakers.build
  end

  # GET /programs/1/edit
  def edit
    @events = Event.all
  end

  # POST /programs
  # POST /programs.json
  def create
    @program = Program.new(program_params)
    @program.day_id = @day.id
    @program.event_id = @day.event_id

    respond_to do |format|
      if @program.save
        format.html { redirect_to events_path(@day, @event), notice: 'Program ble opprettet.' }
        format.json { render :show, status: :created, location: @program }
      else
        format.html { render :new }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programs/1
  # PATCH/PUT /programs/1.json
  def update
    respond_to do |format|
      if @program.update(program_params)
        format.html { redirect_to day_url(@program.day_id), notice: 'Program ble oppdateret.' }
        format.json { render :show, status: :ok, location: @program }
      else
        format.html { render :edit }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.json
  def destroy
    @program.destroy
    respond_to do |format|
      format.html { redirect_to day_url(@program.day_id), notice: 'Program ble slettet.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_program
      @program = Program.find(params[:id])
    end

    def set_day
      @day = Day.find(params[:day_id])
    end

    def set_event
      @event = Event.find(params[:event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_params
      params.require(:program).permit(:user_id, :day_id, :event, :event_id, :starttime, :speaker_id, :endtime, :name, :speaker_id, :speaker_name, :sorting, :speaker_about, :place, :speaker_image, :image, :description, speakers_attributes: [:id, :_destroy, :user_id, :image, :speaker_link, :name, :description, :nummer, :speakingtime, :speaker_image_id, :sorting, speaker_images_attributes: [:id, :image, :speaker_id, :destroy]])
    end

    def require_login
      unless current_user
        flash[:notice] = "Du må logge deg på først."
        redirect_to new_user_session_path
      end
    end

end
