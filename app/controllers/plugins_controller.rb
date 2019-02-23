class PluginsController < ApplicationController
  before_action :set_plugin, only: [:show, :edit, :update, :destroy]
  
  def index
    @plugins = Plugin.all #pluginの一覧を取得、表示
  end
  
  def show
  end 
  
  def new
    @plugin = Plugin.new
  end 
  
  def create
    @plugin = Plugin.new(plugin_params)
    if @plugin.save
      flash[:success] = 'Success'
      redirect_to @plugin
    else
      flash.now[:danger] = 'Post Failed'
      render :new
    end
  end 
  
  def edit
  end 
  
  def update
    if @plugin.update(plugin_params)
      flash[:success] = 'Update is Success!'
      redirect_to @plugin
    else
      flash.now[:danger] = 'Update is Failed!'
      render :edit
    end
  end 
  
  def destroy
    @plugin.destroy
    
    flash[:success] = 'Delete!'
    redirect_to plugins_url
  end 
  
  private
  
  def set_plugin
    @plugin = Plugin.find(params[:id])
  end
  
  #strong parameter 
  def plugin_params
    params.require(:plugin).permit(:plugin_name,:price,:company,:description,:content,:link_url,:picture)
  end 
end

