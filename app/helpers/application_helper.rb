module ApplicationHelper
  def active?(path)
    "active" if current_page?(path)
  end

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
end
