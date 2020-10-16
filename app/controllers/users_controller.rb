class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:name, :is_recruiter?) 
  end
end
