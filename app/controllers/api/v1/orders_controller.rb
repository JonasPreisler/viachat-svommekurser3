module Api
  module V1
    class OrdersController < ApplicationController
      before_action :set_order, only: [:show, :edit, :update, :destroy]
      skip_before_action :verify_authenticity_token

      # GET /orders
      # GET /orders.json
      def index
        @orders = Order.all
      end

      # GET /orders/1
      # GET /orders/1.json
      def show
      end

      # GET /orders/new
      def new
        @order = Order.new
      end

      # GET /orders/1/edit
      def edit
      end

      # POST /orders
      # POST /orders.json
      def create
        @order = Order.new(order_params)
        if @order.save
          render json: {
           "messages": [
             {"text": "Thanks for the order #{@order.first_name} !"}
            ]
          }
        end
      end

      # PATCH/PUT /orders/1
      # PATCH/PUT /orders/1.json
      def update
        respond_to do |format|
          if @order.update(order_params)
            format.html { redirect_to @order, notice: 'Order was successfully updated.' }
            format.json { render :show, status: :ok, location: @order }
          else
            format.html { render :edit }
            format.json { render json: @order.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /orders/1
      # DELETE /orders/1.json
      def destroy
        @order.destroy
        respond_to do |format|
          format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
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
        def set_order
          @order = Order.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def order_params
          params.permit(:last_payment_address, :'last payment address', :last_payment_phone, :'last payment phone', :last_payment_email, :'last payment email', :last_payment_charge_id, :'last payment charge id', :last_purchased_item, :address, :phone, :email, :first_name, :last_name, :'first name', :'last name', :'last purchased item', :amount, :customer_id)
        end
    end
  end
end
