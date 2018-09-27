class SpeakersController < ApplicationController
  before_action :require_login, only: [:index, :edit, :update, :destroy]
  before_action :set_speaker, only: [:show, :edit, :update, :destroy]
  layout 'guest', only: [:show]

  # GET /speakers
  # GET /speakers.json
  def index
  @speaker = Speaker.all.order(sorting: :desc)
  @speakers = current_user.speakers.all.limit(10).order('sorting ASC')
  @speakers_2 = current_user.speakers.all.offset(10).limit(10).order('sorting ASC')
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

    respond_to do |format|
      if @speaker.save
        format.html { redirect_to @speaker, notice: '👌 done' }
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
        format.html { redirect_to @speaker, notice: '👌 done.' }
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
      format.html { redirect_to speakers_url, notice: '👌 done.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaker
      @speaker = Speaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speaker_params
      params.require(:speaker).permit(:user_id, :image, :title, :speaker_link, :time, :date, :name, :description, :sorting, :nummer, :speakingtime, :speaker_image_id, speaker_images_attributes: [:id, :image, :speaker_id, :destroy])
    end

    def require_login
      unless current_user
        flash[:notice] = "Du skal først logge på."
        redirect_to new_user_session_path
      end
    end

end
