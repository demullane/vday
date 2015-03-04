class HomeController < ApplicationController

  def index
    @messages = Message.all.order(:id)
    @message = Message.new
  end


end
