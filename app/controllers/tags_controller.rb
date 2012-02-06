class TagsController < ApplicationController
  def index
    @tags = Tag.where(:ancestry => nil)
    @questions = Tag.find(25).questions
  end
  def get_children
    render :json =>
      {
        :depth    => Tag.find(params[:id]).depth,
        :children => Tag.find(params[:id]).children
      }
  end
  def get_title
    render :json => Tag.find(params[:id]).title
  end

  def get_questions
    @questions = Tag.find(params[:id]).questions
    render :json => @questions
  end
end
