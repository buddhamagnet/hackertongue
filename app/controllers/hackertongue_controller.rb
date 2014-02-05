class HackertongueController < ApplicationController
  def index
  end

  def create
  	if hacker = Hacker.where(username: params[:username]).first
  	  data = "Found hacker in database! Fave language: #{hacker.language}"
  	else
  		data = Hublingo.new.lingo(params[:username])
      case data
      when "Sorry that hacker has no repos!"
      when "That hacker doesn't exist baby."
      when /Uh oh! Rate limit! Please try again/
      else
        Hacker.create(params[:username], data.to_s)
        data = "Found hacker on Github! Fave language: #{data}"
      end
  	end
    redirect_to root_url, notice: data
  end
end
