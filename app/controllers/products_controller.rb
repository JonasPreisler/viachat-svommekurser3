class ProductsController < ApplicationController
  before_action :require_login, only: [:index, :edit, :update, :destroy]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  layout 'guest', only: [:show]

  # GET /products
  # GET /products.json
  def index
  @product = Product.all.order(sorting: :desc)
  @products = current_user.products.all.limit(10).order('sorting ASC')
  @products_2 = current_user.products.all.offset(10).limit(10).order('sorting ASC')
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product_images = @product.product_images.all
  end

  # GET /products/new
  def new
    @product = Product.new
    @product_image = @product.product_images.build
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: '👌 done' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: '👌 done.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: '👌 done.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:user_id, :image, :title, :product_link, :description, :sorting, :nummer, :price, :product_image_id, product_images_attributes: [:id, :image, :product_id, :destroy])
    end

    def require_login
      unless current_user
        flash[:notice] = "Du skal først logge på."
        redirect_to new_user_session_path
      end
    end

end
