class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def render_not_found
    render "errors/404", status: :not_found
  end

  def render_forbidden
    render "errors/403", status: :forbidden
  end
end
