class WpPostsController < ApplicationController
  before_action :set_wp_post, only: [:show, :edit, :update, :destroy]

  def wp_posts
    @wp_posts = WpPost.where(:post_type => 'post')
    @wp_postmetas = WpPostmeta.all
  end

  def show
    @wp_post = WpPost.find(params[:id])
    @wp_postmeta = WpPostmeta.where(:post_id == @wp_post.id)
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
        format.html { redirect_to wp_posts_path, notice: 'Post was successfully created.' }
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

  def destroy
    @wp_post.destroy
    respond_to do |format|
      format.html { redirect_to wp_posts_path, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	
	private

  def set_wp_post
    @wp_post = WpPost.find(params[:id])
  end


  def wp_post_params
    params.require(:wp_post).permit(:id, :post_author, :post_date, :post_date_gmt, :post_modified, :post_modified_gmt, :post_type, :post_content, :post_title, :post_status, :post_name, :post_excerpt, :comment_status, :ping_status, :to_ping, :pinged, :menu_order, :post_content_filtered, :guid, :post_mime_type, :post_id, wp_postmetas_attributes: [:id, :post_id] )
  end

end