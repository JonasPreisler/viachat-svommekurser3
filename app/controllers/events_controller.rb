class EventsController < ApplicationController
  before_action :require_login, only: [:index, :edit, :update, :destroy]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @event = Event.all.order(created_at: :desc)
    @events = current_user.events.all.limit(10)
    @program = Program.all
    @programs = current_user.programs.all.limit(10).order('sorting ASC')
    @programs_2 = current_user.programs.all.offset(10).limit(10).order('sorting ASC')
    @days = Day.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @days = @event.days
  end

  # GET /events/new
  def new
    @event = Event.new
    @day = Day.new
    @event.days.build
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to new_event_day_path(@event), notice: 'Arrangementet ble opprettet.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to events_path, notice: 'Arrangementet er oppdateret.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Arrangementet ble slettet.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:program_id, :user_id, :day_id, :map, :speaker_id, :name, :ticket, :image, :address, days_attributes: [:id, :_destroy, :event_id, :date, :program_id], programs_attributes: [:id, :_destroy, :user_id, :startday, :event, :starttime, :speaker_id, :endtime, :name, :speaker_id, :speaker_name, :sorting, :speaker_about, :place, :speaker_image, :image, :description, speakers_attributes: [:id, :_destroy, :user_id, :image, :speaker_link, :name, :description, :nummer, :speakingtime, :speaker_image_id, :sorting, speaker_images_attributes: [:id, :image, :speaker_id, :destroy]]])
    end


    def require_login
      unless current_user
        flash[:notice] = "Du må logge deg på først."
        redirect_to new_user_session_path
      end
    end
end
