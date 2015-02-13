class HomeController < ApplicationController

  before_action :find_params, only: [:show, :edit, :update, :destroy]

  def index
    @messages = Message.all
    @message = Message.new
  end


  def test
    @message = Message.find(1)

  end


end
