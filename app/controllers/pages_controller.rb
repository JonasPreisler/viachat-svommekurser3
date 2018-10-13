class PagesController < ApplicationController
    before_action :require_admin, only: [:brukere]
	
	def brukere
		@users = User.all
	end

	private

    def require_admin
      unless current_user.admin
        flash[:notice] = "You must log in."
        redirect_to new_user_session_path
      end
    end



end