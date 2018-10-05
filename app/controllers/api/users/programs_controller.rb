class Api::Users::ProgramsController < ApplicationController
  before_action :set_program, only: [:day1, :day2, :day3, :day4, :day5, :show, :edit, :update, :destroy]
  before_action :set_day, only: [:day1, :index, :show, :edit, :update, :destroy]
  before_action :set_event, only: [:show, :new, :edit, :create, :update, :destroy]
  before_action :set_user, only: [:day1, :show, :new, :edit, :create, :update, :destroy]


  def day1
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @day = Day.all
    @days = @event.days.first
    @events = Event.all
    @programs = Program.all
    @program = @days.programs.all.limit(10).order('sorting ASC')
    render :day1
  end

  def day2
    @user = User.find(params[:user_id])
    @day = Day.all
    @days = @user.days.second
    @programs = Program.all
    @program = @days.programs.all
    render :day2
  end

  def day3
    @user = User.find(params[:user_id])
    @day = Day.all
    @days = @user.days.third
    @programs = Program.all
    @program = @days.programs.all
    render :day3
  end

  def day4
    @user = User.find(params[:user_id])
    @day = Day.all
    @days = @user.days.fourth
    @programs = Program.all
    @program = @days.programs.all
    render :day4
  end
  
  def day5
    @user = User.find(params[:user_id])
    @day = Day.all
    @days = @user.days.fifth
    @programs = Program.all
    @program = @days.programs.all
    @first_day = @day.first
    render :day5
  end
  
  def index
    @day = Day.all
    @first_day = @user.days
    @programs = @first_day.programs
    @user = User.first
    render :index
  end

  # GET /days/1
  # GET /days/1.json
  def show
    @program = Program.all
    @programs = @day.programs.all.limit(10).order('sorting ASC')

  end

  # GET /days/new
  def new
    @day = Day.new
  end

  # GET /days/1/edit
  def edit
  end

  # POST /days
  # POST /days.json
  def create
    @day = Day.new(day_params)
    @day.event_id = @event.id

    respond_to do |format|
      if @day.save
        format.html { redirect_to new_event_day_path(@event, @day), notice: 'Dagen ble opprettet.' }
        format.json { render :show, status: :created, location: @day }
      else
        format.html { render :new }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to events_path, notice: 'Dagen ble oppdatert.' }
        format.json { render :show, status: :ok, location: @day }
      else
        format.html { render :edit }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to events_path, notice: 'Dagen ble slettet.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program
      @program = Program.all
    end

    def set_day
      @day = Day.find(params[:user_id])
    end
    def set_user
      @day = User.find(params[:user_id])
    end

    def set_event
      @event = Event.find(params[:event_id])
    end
 
    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:event_id, :date, :program_id, :user_id)
    end
end

