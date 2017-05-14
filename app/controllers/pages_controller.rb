class PagesController < ApplicationController
  def about
  end

  def raschet
  end

  def admin
    @admin_requests = Request.where(reaction: false).reverse
    @admin_messages = Message.where(reaction:false).reverse
   # if()
  end

  def cabinet
    #@client = Client.new
    @clients = Client.all
    #@code = params[:code]
    #@clients.each do |client|
     # if client.code == @code
      #  @client = client
       # redirect_to @client
      #end
    #end
    #@client = []
    #@client = Client.where(code: params[:code]).pluck(:id)

    #@client_code = params[:code]
    #@client = Client.where(code: @client_code).first
    #@client = Client.where(code: @code).first

    if @client
      redirect_to @client
    end

    #redirect_to @client
  end

  def cabinet2
    @client = Client.find(1)
    if @client
      redirect_to @client
    end
  end

  def search
    code = params[:code]
    @client = Client.find_by_code(code).first
  end

  private
  def client_params
    params.require(:client).permit(:code)
  end
end
