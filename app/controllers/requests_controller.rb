class RequestsController < ApplicationController

  def new
    @districts = District.all
  end

  def create
    @districts = District.all
    @request = Request.new(request_params)
    if @request.type_of_input == 'Только щит'
      @request.app_price = '45000 рублей'
    elsif @request.type_of_input == 'СИП'
      @request.app_price = '50000 рублей'
    elsif @request.type_of_input == 'Кабель'
      @request.app_price = '50000 рублей. Стоимость работ по прокладке кабеля определится после осмотра участка нашим специалистом'
    end

    @request.save
  end

  def edit
  end

  def update
    Request.where( id: params[:request_ids] ).update_all( :reaction => true )
    redirect_to :back
  end

  def show
    @request = Request.find(params[:id])
  end

  def index
    @requests = Request.all.reverse
  end


  # def update_request(reaction)
  #   self.update_attributes(reaction: request_params[:reaction])
  # end

  private
    def request_params
      params.require(:request).permit(:district, :address, :house_exist, :line_exist, :type_of_input, :name, :email, :phone, :reaction)
    end
end

