class Api::Users::ProgramsController < ApplicationController
  before_action :set_program, only: [:day1, :day2, :day3, :day4, :day5, :program1, :show, :edit, :update, :destroy]
  before_action :set_day, only: [:day1, :index, :show, :edit, :update, :destroy]
  before_action :set_event, only: [:show, :new, :edit, :create, :update, :destroy]
  before_action :set_user, only: [:day1, :show, :new, :edit, :create, :update, :destroy]

  def map
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    render :map
  end

  def link
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    render :link
  end


  def day1
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @day = Day.all
    @days = @event.days.first
    @programs = Program.all
    @program = @days.programs.all.limit(10).order('sorting_id ASC')
    render :day1
  end

  def day1_2
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @day = Day.all
    @days = @event.days.first
    @programs = Program.all
    @program = @days.programs.all.offset(10).order('sorting_id ASC')
    render :day1_2
  end

  def day2
    @user = User.find(params[:user_id])
    @day = Day.all
    @days = @user.days.second
    @programs = Program.all
    @program = @days.programs.all.limit(10).order('sorting_id ASC')
    render :day2
  end

  def day2_2
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @day = Day.all
    @days = @event.days.second
    @program = @days.programs.all.offset(10).order('sorting_id ASC')
    render :day2_2
  end

  def day3
    @user = User.find(params[:user_id])
    @day = Day.all
    @days = @user.days.third
    @programs = Program.all
    @program = @days.programs.all.limit(10).order('sorting_id ASC')
    render :day3
  end

  def day3_2
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @day = Day.all
    @days = @event.days.third
    @programs = Program.all
    @program = @days.programs.all.offset(10).order('sorting_id ASC')
    render :day3_2
  end

  def day4
    @user = User.find(params[:user_id])
    @day = Day.all
    @days = @user.days.fourth
    @programs = Program.all
    @program = @days.programs.all.limit(10).order('sorting_id ASC')
    render :day4
  end

  def day4_2
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @day = Day.all
    @days = @event.days.fourth
    @programs = Program.all
    @program = @days.programs.all.offset(10).order('sorting_id ASC')
    render :day4_2
  end
  
  def day5
    @user = User.find(params[:user_id])
    @day = Day.all
    @days = @user.days.fifth
    @programs = Program.all
    @program = @days.programs.all.limit(10).order('sorting_id ASC')
    @first_day = @day.first
    render :day5
  end

  def day5_2
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @day = Day.all
    @days = @event.days.fifth
    @programs = Program.all
    @program = @days.programs.all.offset(10).order('sorting_id ASC')
    render :day5_2
  end
  

  def program1
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(1)
    render :program1
  end
  def program2
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(2)
    render :program2
  end
  def program3
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @program = @event.programs.find_by_sorting_id(3)
    render :program3
  end
  def program4
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(4)
    render :program4
  end
  def program5
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(5)
    render :program5
  end
  def program6
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(6)
    render :program6
  end
  def program7
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(7)
    render :program7
  end
  def program8
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(8)
    render :program8
  end
  def program9
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(9)
    render :program9
  end
  def program10
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(10)
    render :program10
  end
  def program11
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(11)
    render :program11
  end
  def program12
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(12)
    render :program12
  end
  def program13
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(13)
    render :program13
  end
  def program14
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(14)
    render :program14
  end
  def program15
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(15)
    render :program15
  end
  def program16
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(16)
    render :program16
  end
  def program17
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(17)
    render :program17
  end
  def program18
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(18)
    render :program18
  end
  def program19
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(19)
    render :program19
  end
  def program20
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
    @programs = Program.all
    @program = @event.programs.find_by_sorting_id(20)
    render :program20
  end

  def index
    @day = Day.all
    @first_day = @user.days
    @programs = @first_day.programs
    @user = User.first
    render :index
  end


  def speakers_2
  @speaker = Speaker.all.order(sorting_id: :desc)
  @speakers_2 = current_user.speakers.all.offset(10).limit(10).order('sorting_id ASC')
  render :speaker_2
  end

  def programs
    @event = Event.find(params[:event_id])
    @program = Program.all.order(sorting_id: :desc)
    @programs = @event.programs.all.limit(10).order('sorting_id ASC')
    render :programs
  end

  def programs_2
    @event = Event.find(params[:event_id])
    @program = Program.all.order(sorting_id: :desc)
    @programs_2 = @event.programs.all.offset(10).limit(10).order('sorting_id ASC')
    render :programs_2
  end

  # GET /days/1
  # GET /days/1.json
  def show
    @program = Program.all
    @programs = @day.programs.all.limit(10).order('sorting_id ASC')
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

