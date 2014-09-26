helpers do
  def current_user
    if session[:user_id] == nil
      return nil
    else
      @current_user = User.find(session[:user_id])
      @current_user
    end
  end
end
