class HackertongueController < ApplicationController
  def index
  end

  def create
    redirect_to root_url, notice: Hublingo.new.lingo(params[:username])
  end
end
