class UsersController < ApplicationController

  def show
    @user = User.first
    @projects = @user.projects
  end

end
