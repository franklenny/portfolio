class UsersController < ApplicationController

  def show
    @user = User.first
    @projects = @user.projects
    @skills = @user.skills
  end

end
