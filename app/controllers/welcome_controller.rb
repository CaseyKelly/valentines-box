class WelcomeController < ApplicationController
  def index
    @valentine = Valentine.new
  end
end
