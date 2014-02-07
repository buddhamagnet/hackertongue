class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :log_request

  def log_request
    unless request.ip == '127.0.0.1'
      Request.create!(path: request.headers['PATH_INFO'], remote: request.headers['REMOTE_ADDR'], ip: request.ip)
    end
  end
end
