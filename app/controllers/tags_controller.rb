class TagsController < ApplicationController

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

  def get_professional_questions
    @professional_questions = Tag.find(params[:id]).professional_questions
    render 'tags/get_professional_questions'
  end

  def get_client_questions
    render :json => Tag.find(params[:id]).client_questions
  end
end
