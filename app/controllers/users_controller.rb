class UsersController < ApplicationController
  before_action :require_login, only: [:index, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def show
    @speakers = @user.speakers.all
    @speakers_2 = @user.speakers.all
    render json: {
     "messages": [
        {
          "attachment":{
            "type":"template",
            "payload":{
              "template_type":"generic",
              "image_aspect_ratio":"square",
              "elements":[
                {
                  "title":"#{@user.speakers.first.address}",
                  "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                  "subtitle":"#{@user.speakers.first.price}",
                  "buttons":[
                    {
                      "type":"web_url",
                      "url":"http://chatestate.herokuapp.com/users/#{@user.speakers.first.id}",
                      "title":"Click here!"
                    }
                  ]
                },
                {
                  "title":"#{@user.speakers.first.address}",
                  "image_url":"https://thumb7.shutterstock.com/display_pic_with_logo/109564/436440067/stock-vector-human-resources-management-select-employee-recruitment-concept-of-human-resources-management-cv-436440067.jpg",
                  "subtitle":"#{@user.speakers.first.price}",
                  "buttons":[
                    {
                      "type":"web_url",
                      "url":"http://chatestate.herokuapp.com/users/#{@user.speakers.first.id}",
                      "title":"Click here!"
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

  # GET /users/1
  # GET /users/1.json

  # GET /users/new
  def new
    @user = User.new
    @user_image = @user.user_images.build
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
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
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:speaker_id, :program_id)
    end

    def require_login
      unless current_user
        flash[:notice] = "You must log in."
        redirect_to new_user_session_path
      end
    end

end
