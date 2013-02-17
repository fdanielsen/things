class TagsController < ApplicationController
  respond_to :json

  def index
    respond_with tags
  end

  def show
    respond_with tag
  end

  def create
    tag.save
    respond_with tag
  end



  private

  def tags
    @tags ||= params[:ids] ? Tag.where(id: params[:ids]) : Tag.scoped
  end

  def tag
    @tag ||= if params[:id]
      Tag.find params[:id]
    else
      Tag.new params[:tag]
    end
  end
end
