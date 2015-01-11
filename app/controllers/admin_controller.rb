class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :verify_admin

  def verify_admin

    if current_user.admin == false
      redirect_to root_path
      flash[:alert]="This section is for admins only"
    end

  end
end
