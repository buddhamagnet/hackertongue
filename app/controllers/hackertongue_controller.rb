class HackertongueController < ApplicationController
  def index
  end

  def create
  	if @hacker = Hacker.find_by_name(params[:username])
  	  data = @hscker.language
  	else
  		data = Hublingo.new.lingo(params[:username])
  		Hacker.new(params[:username], data).save
  	end
    redirect_to root_url, notice: data
  end
end
