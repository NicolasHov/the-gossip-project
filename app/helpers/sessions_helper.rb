module SessionsHelper

  def log_in(moussaillon)
    session[:moussaillon_id] = moussaillon.id
  end
end
