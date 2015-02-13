class HomeController < ApplicationController

  before_action :find_params, only: [:show, :edit, :update, :destroy]

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to messages_path, notice: "Message was successfully created."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @message.update(message_params)
      redirect_to messages_path, notice: "Message was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @message.destroy
    redirect_to users_path, notice: "Message was successfully destroyed."
  end

  private
  def find_params
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:first_name, :message)
  end

end
