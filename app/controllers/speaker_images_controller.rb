class SpeakerImagesController < ApplicationController
  before_action :set_speaker_image, only: [:show, :edit, :update, :destroy]

  # GET /speaker_images
  # GET /speaker_images.json
  def index
    @speaker_images = SpeakerImage.all
  end

  # GET /speaker_images/1
  # GET /speaker_images/1.json
  def show
  end

  # GET /speaker_images/new
  def new
    @speaker_image = SpeakerImage.new
  end

  # GET /speaker_images/1/edit
  def edit
  end

  # POST /speaker_images
  # POST /speaker_images.json
  def create
    @speaker_image = SpeakerImage.new(speaker_image_params)

    respond_to do |format|
      if @speaker_image.save
        format.html { redirect_to @speaker_image, notice: '👌 done' }
        format.json { render :show, status: :created, location: @speaker_image }
      else
        format.html { render :new }
        format.json { render json: @speaker_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speaker_images/1
  # PATCH/PUT /speaker_images/1.json
  def update
    respond_to do |format|
      if @speaker_image.update(speaker_image_params)
        format.html { redirect_to @speaker_image.speaker, notice: '👌 done' }
      end 
    end
  end

  # DELETE /speaker_images/1
  # DELETE /speaker_images/1.json
  def destroy
    @speaker_image.destroy
    respond_to do |format|
      format.html { redirect_to speakers_path, notice: '👌 done' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaker_image
      @speaker_image = SpeakerImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speaker_image_params
      params.require(:speaker_image).permit(:speaker_id, :image)
    end
end
