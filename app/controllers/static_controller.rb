class StaticController < ApplicationController
  def index
  	@email = Email.new
  end
end
