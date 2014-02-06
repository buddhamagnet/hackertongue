class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :log_request

  def log_request
    Request.create!(path: request.headers['PATH_INFO'], remote: request.headers['REMOTE_ADDR'], ip: request.ip)
  end
end
