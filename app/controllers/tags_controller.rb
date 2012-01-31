class TagsController < ApplicationController
  def index
    @tags = Tag.where(:ancestry => nil)
  end
  
  def get_children
    render :json =>
      {
        :depth => Tag.find(params[:id]).depth,
        :children => Tag.find(params[:id]).children
      }
  end

end
