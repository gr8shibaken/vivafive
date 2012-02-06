class TagsQuestionsController < ApplicationController

  def new
    @tags_question = TagsQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tags_question }
    end
  end

  def create
    @tags_question = TagsQuestion.new(params[:tags_question])

    respond_to do |format|
      if @tags_question.save
        format.html { redirect_to @tags_question, notice: 'successfully created.' }
        format.json { render json: @tags_question, status: :created, location: @tags_question }
      else
        format.html { render action: "new" }
        format.json { render json: @tags_question.errors, status: :unprocessable_entity }
      end
    end
  end

end
