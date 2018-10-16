class WpPostsController < ApplicationController
  before_action :set_wp_post, only: [:show, :edit, :update, :destroy]
  before_action :require_admin, only: [:brukere]

  def wp_posts
    @wp_posts = WpPost.all
  end

  def show
    @wp_post = WpPost.find(params[:id])
  end

  def edit
    @wp_post = WpPost.find(params[:id])
  end

  def new
    @wp_post = WpPost.new
    @date = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  end

  # POST /sortings
  # POST /sortings.json
  def create
    @wp_post = WpPost.new(wp_post_params)

    respond_to do |format|
      if @wp_post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @wp_post }
      else
        format.html { render :new }
        format.json { render json: @wp_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sortings/1
  # PATCH/PUT /sortings/1.json
  def update
    respond_to do |format|
      if @wp_post.update(wp_post_params)
        format.html { redirect_to @wp_post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @wp_post }
      else
        format.html { render :edit }
        format.json { render json: @wp_post.errors, status: :unprocessable_entity }
      end
    end
  end

	
	def brukere
		@users = User.all
	end

	private

  def set_wp_post
    @wp_post = WpPost.find(params[:id])
  end


  def wp_post_params
    params.require(:wp_post).permit(:id, :post_author, :post_date, :post_date_gmt, :post_content, :post_title, :post_status, :post_name, :post_type)
  end

    def require_admin
      unless current_user.admin
        flash[:notice] = "You must log in."
        redirect_to new_user_session_path
      end
    end

end