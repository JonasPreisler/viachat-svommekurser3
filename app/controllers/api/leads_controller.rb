module Api
  class LeadsController < ApplicationController
    before_action :set_lead, only: [:show, :edit, :update, :destroy]
    skip_before_action :verify_authenticity_token

    # GET /leads
    # GET /leads.json
    def index
      @leads = Lead.all
    end

    # GET /leads/1
    # GET /leads/1.json
    def show
    end

    # GET /leads/new
    def new
      @lead = Lead.new
    end

    # GET /leads/1/edit
    def edit
    end

    # POST /leads
    # POST /leads.json
    def create
      @lead = Lead.new(lead_params)
      if @lead.save
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
                      "title":"#{@lead.address}",
                      "image_url":"data:image/png;base64,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",
                      "subtitle":"Select time and date.",
                      "buttons":[
                        {
                          "type":"web_url",
                          "url":"http://chatestate.herokuapp.com/#{@lead.id}/tid",
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
    end

    def broadcast
      render json: {
       "messages": [
         {"text": "Vælg tidspunkt hér: www.chatestate.herokuapp.com/#{@lead.id}/tid "}
        ]
      }
    end

    # PATCH/PUT /leads/1
    # PATCH/PUT /leads/1.json
    def update
      respond_to do |format|
        if @lead.update(lead_params)
          format.html { redirect_to @lead, notice: 'Lead was successfully updated.' }
          format.json { render :show, status: :ok, location: @lead }
        else
          format.html { render :edit }
          format.json { render json: @lead.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /leads/1
    # DELETE /leads/1.json
    def destroy
      @lead.destroy
      respond_to do |format|
        format.html { redirect_to leads_url, notice: 'Lead was successfully destroyed.' }
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
      def set_lead
        @lead = Lead.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def lead_params
        params.permit(:first_name, :last_name, :gender, :source, :locale, :profile_pic_url, :timezone, :messenger_user_id, :chatfuel_user_id, :ref, :country, :city, :state, :zip, :address, :latitude, :longitude, :map_url, :last_visited_block_name, :last_visited_block_id, :last_clicked_button_name, :last_user_freeform_input, :property, :timeanddate, :email, :slot_id, :secret, :phone, :user_id, :'first name', :'last name')
      end
  end
end