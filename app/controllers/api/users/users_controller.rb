class Api::Users::UsersController < ApplicationController
  before_action :set_user, only: [:days, :program_1, :show, :edit, :update, :destroy]
  before_action :set_day, only: [:day1, :index, :show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def index
    @user = User.all
    render :show
  end

  def show
    @days = @user.days.all.limit(10)
    @event = Event.all.order(created_at: :desc)
    @events = @user.events.all.limit(10)
    @program = Program.all
    @programs = @user.programs.all.limit(10).order('sorting ASC')
    @programz = @events.first.days.first
    @user = User.first
    render :show
  end 
  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      render json: {
       "messages": [
          {
            "attachment":{
              "type":"template",
              "payload":{
                "template_type":"generic",
                "image_aspect_ratio": "square",
                "elements":[
                  {
                    "title":"Vælg dato og tidspunkt for #{@user.user}",
                    "image_url":"http://chatsales.dk/vælg%20dato%20og%20tid.jpeg",
                    "buttons":[
                      {
                        "type":"web_url",
                        "url":"http://chatestate.herokuapp.com/#{@user.id}/tid",
                        "title":"Klik hér."
                      }
                    ]
                  }
                ]
              }
            }
          }
        ]
      }
    end
  end

  def broadcast
    render json: {
     "messages": [
       {"text": "Vælg tidspunkt hér: www.chatestate.herokuapp.com/#{@user.id}/tid "}
      ]
    }
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def connect
    last_purchased_item = params['last purchased item']
    first_name = params['first name']
    last_name = params['last name']
    last_payment_address = params['last payment address']
    last_payment_phone = params['last payment phone']
    last_payment_email = params['last payment email']
    last_payment_charge_id = params['last payment charge id']
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def set_day
      @day = Day.find(params[:user_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:first_name, :program, :program_id, :day_id, :last_name, :gender, :source, :locale, :profile_pic_url, :timezone, :messenger_user_id, :chatfuel_user_id, :ref, :country, :city, :state, :zip, :address, :latitude, :longitude, :map_url, :last_visited_block_name, :last_visited_block_id, :last_clicked_button_name, :last_user_freeform_input, :user, :timeanddate, :email, :slot_id, :secret)
  end
end
