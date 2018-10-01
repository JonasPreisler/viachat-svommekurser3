class ProgramsController < ApplicationController
  before_action :require_login, only: [:index, :edit, :update, :destroy]
  before_action :set_program, only: [:show, :edit, :update, :destroy]
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
    @event = @program.event
  end

  # GET /programs/new
  def new
    @program = Program.new
    @event = Event.all
    @program.speakers.build
    @place = Place.all
  end

  # GET /programs/1/edit
  def edit
  end

  # POST /programs
  # POST /programs.json
  def create
    @program = Program.new(program_params)

    respond_to do |format|
      if @program.save
        format.html { redirect_to @program, notice: 'Program was successfully created.' }
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
        format.html { redirect_to @program, notice: 'Program was successfully updated.' }
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
      format.html { redirect_to programs_url, notice: 'Program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_program
      @program = Program.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_params
      params.require(:program).permit(:user_id, :startday, :event, :event_id, :starttime, :speaker_id, :endtime, :name, :speaker_id, :speaker_name, :sorting, :speaker_about, :place, :speaker_image, :image, :description, speakers_attributes: [:id, :_destroy, :user_id, :image, :speaker_link, :name, :description, :nummer, :speakingtime, :speaker_image_id, :sorting, speaker_images_attributes: [:id, :image, :speaker_id, :destroy]])
    end


    def require_login
      unless current_user
        flash[:notice] = "Du må logge deg på først."
        redirect_to new_user_session_path
      end
    end

end
