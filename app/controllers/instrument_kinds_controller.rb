class InstrumentKindsController < ApplicationController
  def index
    @instrument_kinds = InstrumentKind.all
  end

  def show
    @instrument_kind = InstrumentKind.find(params[:id])
    @instruments = @instrument_kind.instruments.order('created_at DESC')
  end
end