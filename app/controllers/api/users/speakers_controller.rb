class Api::Users::SpeakersController < ApplicationController
  before_action :require_login, only: [:index, :edit, :update, :destroy]
  before_action :set_speaker, only: [:speakers_2, :speaker1, :show, :edit, :update, :destroy]
  before_action :set_program, only: [:show, :new, :edit, :create, :update, :destroy]
  layout 'guest', only: [:show]

  def index
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @events = Event.all
    @speakers = Speaker.all
    @speaker = @event.speakers.all.limit(10).order('sorting ASC')
    render :index
  end

  def speakers_2
  @speaker = Speaker.all.order(sorting: :desc)
  @speakers_2 = current_user.speakers.all.offset(10).limit(10).order('sorting ASC')
  render :speaker_2
  end

  def speaker1
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(1)
    render :speaker1
  end
  def speaker2
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(2)
    render :speaker2
  end
  def speaker3
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(3)
    render :speaker3
  end
  def speaker4
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(4)
    render :speaker4
  end
  def speaker5
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(5)
    render :speaker5
  end
  def speaker6
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(6)
    render :speaker6
  end
  def speaker7
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(17)
    render :speaker7
  end
  def speaker8
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(8)
    render :speaker8
  end
  def speaker9
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(9)
    render :speaker9
  end
  def speaker10
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(10)
    render :speaker10
  end
  def speaker11
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(11)
    render :speaker11
  end
  def speaker12
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(12)
    render :speaker12
  end
  def speaker13
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(13)
    render :speaker13
  end
  def speaker14
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(14)
    render :speaker14
  end
  def speaker15
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(15)
    render :speaker15
  end
  def speaker16
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(16)
    render :speaker16
  end
  def speaker17
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(17)
    render :speaker17
  end
  def speaker18
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(18)
    render :speaker18
  end
  def speaker19
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(19)
    render :speaker19
  end
  def speaker20
    @user = User.find(params[:user_id])
    @program = Program.find(params[:program_id])
    @programs = Program.all
    @speaker = @program.speakers.find_by_sorting(20)
    render :speaker20
  end
  # GET /speakers/1
  # GET /speakers/1.json
  def show
    @speaker_images = @speaker.speaker_images.all
  end

  # GET /speakers/new
  def new
    @speaker = Speaker.new
    @speaker_image = @speaker.speaker_images.build
  end

  # GET /speakers/1/edit
  def edit
  end

  # POST /speakers
  # POST /speakers.json
  def create
    @speaker = Speaker.new(speaker_params)
    @speaker.program_id = @program.id

    respond_to do |format|
      if @speaker.save
        format.html { redirect_to program_url(@speaker.program_id), notice: '👌 done. Foredragsholder ble opprettet.' }
        format.json { render :show, status: :created, location: @speaker }
      else
        format.html { render :new }
        format.json { render json: @speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speakers/1
  # PATCH/PUT /speakers/1.json
  def update
    respond_to do |format|
      if @speaker.update(speaker_params)
        format.html { redirect_to program_url(@speaker.program_id), notice: '👌 done. Foredragsholder ble oppdateret.' }
        format.json { render :show, status: :ok, location: @speaker }
      else
        format.html { render :edit }
        format.json { render json: @speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speakers/1
  # DELETE /speakers/1.json
  def destroy
    @speaker.destroy
    respond_to do |format|
      format.html { redirect_to program_url(@speaker.program_id), notice: '👌 done. Foredragsholder ble slettet.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaker
      @speaker = Speaker.find(params[:id])
    end

    def set_program
      @program = Program.find(params[:program_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def speaker_params
      params.require(:speaker).permit(:user_id, :image, :event, :speaker_link, :name, :description, :sorting, :nummer, :speakingtime, :speaker_image_id, speaker_images_attributes: [:id, :image, :speaker_id, :destroy])
    end

    def require_login
      unless current_user
        flash[:notice] = "Du skal først logge på."
        redirect_to new_user_session_path
      end
    end

end
