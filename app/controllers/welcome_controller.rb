class WelcomeController < ApplicationController
  def index
  	if not current_user
  		@user = User.new
  	end
  end
end
