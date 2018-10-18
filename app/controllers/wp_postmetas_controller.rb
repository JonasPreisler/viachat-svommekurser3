class WpPostmetasController < ApplicationController
  before_action :set_wp_postmeta, only: [:wp_postmeta, :show, :edit, :update, :destroy]

  def wp_postmetas
    @wp_postmetas = WpPostmeta.all
  end

  def show
    @wp_postmeta = WpPostmeta.find(params[:id])
  end

  def edit
    @wp_postmeta = WpPostmeta.find(params[:id])
  end

  def new
    @wp_postmeta = WpPostmeta.new
    @date = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  end

  # POST /sortings
  # POST /sortings.json
  def create
    @wp_postmeta = WpPost.new(wp_postmeta_params)

    respond_to do |format|
      if @wp_postmeta.save
        format.html { redirect_to wp_postmetas_path, notice: 'Postmeta was successfully created.' }
        format.json { render :show, status: :created, location: @wp_postmeta }
      else
        format.html { render :new }
        format.json { render json: @wp_postmeta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sortings/1
  # PATCH/PUT /sortings/1.json
  def update
    respond_to do |format|
      if @wp_postmeta.update(wp_postmeta_params)
        format.html { redirect_to @wp_postmeta, notice: 'Postmeta was successfully updated.' }
        format.json { render :show, status: :ok, location: @wp_postmeta }
      else
        format.html { render :edit }
        format.json { render json: @wp_postmeta.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @wp_postmeta.destroy
    respond_to do |format|
      format.html { redirect_to wp_postmetas_path, notice: 'Postmeta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	
	private

  def set_wp_postmeta
    @wp_postmeta = WpPostmeta.find(params[:id])
  end


  def wp_postmeta_params
    params.require(:wp_postmeta).permit(:post_id, :id, :post_author, :post_date, :post_date_gmt, :post_modified, :post_modified_gmt, :post_type, :post_content, :post_title, :post_status, :post_name, :post_excerpt, :comment_status, :ping_status, :to_ping, :pinged, :menu_order, :post_content_filtered, :guid, :post_mime_type, :post_id)
  end

end