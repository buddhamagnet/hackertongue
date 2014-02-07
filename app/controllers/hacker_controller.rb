class HackerController < ApplicationController
  def index
    @hackers = Hacker.all
  end
end
