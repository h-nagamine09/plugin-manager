class InstrumentsController < ApplicationController
  # before_action :basic
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]
  
  def index
    @instruments = Instrument.all 
  end
  
  def show
  end 
  
  def new
    @instrument = Instrument.new
  end 
  
  def create
    @instrument = Instrument.new(instrument_params)
    if @instrument.save
      flash[:success] = 'Success'
      redirect_to @instrument
    else
      flash.now[:danger] = 'Post Failed'
      render :new
    end
  end 
  
  def edit
  end 
  
  def update
    if @instrument.update(instrument_params)
      flash[:success] = 'Update is Success!'
      redirect_to @instrument
    else
      flash.now[:danger] = 'Update is Failed!'
      render :edit
    end
  end 
  
  def destroy
    @instrument.destroy
    
    flash[:success] = 'Delete Success!'
    redirect_to instruments_url
  end 
  
  private
  
  # def basic
  #   authenticate_or_request_eith_http_basic do |name,password|
  #     name == ENV['BASIC_AUTH_NAME'] && password == ENV['BASIC_AUTH_PASSWORD']
  #   end
  # end
  
  
  def set_instrument
    @instrument = Instrument.find(params[:id])
  end
  
  #strong parameter 
  def instrument_params
    params.require(:instrument).permit(:instrument_name,:instrument_kind_id,:price,:company,:description,:content,:link_url,:picture)
  end 
end
