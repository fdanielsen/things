class ThingsController < ApplicationController
  respond_to :json

  def index
    respond_with things
  end

  def show
    respond_with thing
  end

  def create
    thing.save
    respond_with thing
  end



  private

  def things
    @things ||= params[:ids] ? Thing.where(id: params[:ids]) : Thing.scoped
  end

  def thing
    @thing ||= if params[:id]
      Thing.find params[:id]
    else
      Thing.new params[:thing]
    end
  end
end
