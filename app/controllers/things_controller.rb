class ThingsController < ApplicationController
  respond_to :json

  def index
    respond_with things
  end

  def show
    respond_with thing
  end



  private

  def things
    Thing.all
  end

  def thing
    Thing.find params[:id]
  end
end
