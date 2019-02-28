class PluginKindsController < ApplicationController
  def index
    @plugin_kinds = PluginKind.all
  end

  def show
    #Plugin_kind一覧を取得し、@plugin_kindに紐づいたpluginsを表示
    @plugin_kind = PluginKind.find(params[:id])
    @plugins =  @plugin_kind.plugins.order('created_at DESC')
  end
end
