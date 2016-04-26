helpers do
  def current_user

    User.find_by(id: session[:user_id])
  end

  # I tried session[:user_id] && current_user, but that returned the current user, which evaluated as falsey(I expected it to evaluate as truthy). The below is a slight workaround.
  def logged_in?

    session[:user_id] && (current_user != nil)
  end

  def is_current_user?(id)

    id.to_i == session[:user_id]
  end

  def require_login

    redirect '/sessions' unless logged_in?
  end

  def require_current_user

    redirect '/sessions' unless logged_in? && is_current_user?(params[:id])
  end
end
