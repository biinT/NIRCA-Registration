class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :current_user_team
  
  def current_user_team
    if current_user.present?
      if session[:team].nil?
        t = Team.find_by_school_name(current_user.team_id)
        session[:team] = t.id
      end
    end
  end
  
  
end
