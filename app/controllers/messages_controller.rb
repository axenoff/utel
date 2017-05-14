class MessagesController < ApplicationController

  def new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      @message.save
    else
      render action: 'new'
    end
  end

 

  def edit
  end

  def update
    Message.where( id: params[:message_ids] ).update_all( :reaction => true )
    redirect_to :back
  end

   def show
    @message = Message.find(params[:id])
  end

  def index
    @messages = Message.all.reverse
  end

  
  private
   def message_params
    params.require(:message).permit(:email, :phone, :name, :text)
  end

end
