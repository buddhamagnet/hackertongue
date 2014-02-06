class RequestController < ApplicationController
  def index
  	@requests = Request.all
  end

  private

  def log_request
  end
end
