class ClientsController < ApplicationController
  def new
  end

  def create
    @client = Client.create(client_params)
    redirect_to admin_path
  end

  def show
    #@client = Client.where(code: '1').first
    #@client = Client.where(code: params[:code]).take
    @client = Client.find(params[:id])

  end

  def search
    @client = Client.where(code: 'params[:code]')
  end

  private
    def client_params
      params.require(:client).permit(:name, :code, :object, :status)
    end
end
