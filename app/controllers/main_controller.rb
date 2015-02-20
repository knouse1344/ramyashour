class MainController < ApplicationController
  def index
  	@application = Application.new
  end
end
