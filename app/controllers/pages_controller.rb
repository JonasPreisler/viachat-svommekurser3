class PagesController < ApplicationController
    before_action :require_login, only: [:index, :edit, :update, :destroy]
	
	def brukere
		@users = User.all
	end

	private

    def require_login
      unless current_admin
        flash[:notice] = "You must log in."
        redirect_to new_admin_session_path
      end
    end



end