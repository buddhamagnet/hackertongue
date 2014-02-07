class HackertongueController < ApplicationController

  before_filter :log_request

  def index
    @most_popular = Hacker.most_popular
  end

  def create
    if hacker = Hacker.where(username: params[:username]).first
      data = "Found hacker in database! Fave language: #{hacker.language}"
    else
      begin
        data = Hublingo.new.lingo(params[:username])
        Hacker.create(username: params[:username], language: data.to_s)
        data = "Found hacker on Github! Fave language: #{data}"
      rescue HublingoNotFound
        data = "That hacker doesn't exist baby."
      rescue HublingoNoPublic
        data = "Sorry that hacker has no public repos!"
      rescue HublingoRateLimit => e
        data = "Uh oh! Rate limit! Please try again at #{e.message}"
      end
    end
    redirect_to root_url, notice: data
  end

  def hacker_params
    params.require(:username).permit(:username)
  end
end
