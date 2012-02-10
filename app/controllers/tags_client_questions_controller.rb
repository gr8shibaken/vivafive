class TagsClientQuestionsController < ApplicationController
  # GET /tags_client_questions
  # GET /tags_client_questions.json
  def index
    @tags_client_questions = TagsClientQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tags_client_questions }
    end
  end

  # GET /tags_client_questions/1
  # GET /tags_client_questions/1.json
  def show
    @tags_client_question = TagsClientQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tags_client_question }
    end
  end

  # GET /tags_client_questions/new
  # GET /tags_client_questions/new.json
  def new
    @tags_client_question = TagsClientQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tags_client_question }
    end
  end

  # GET /tags_client_questions/1/edit
  def edit
    @tags_client_question = TagsClientQuestion.find(params[:id])
  end

  # POST /tags_client_questions
  # POST /tags_client_questions.json
  def create
    @tags_client_question = TagsClientQuestion.new(params[:tags_client_question])

    respond_to do |format|
      if @tags_client_question.save
        format.html { redirect_to @tags_client_question, notice: 'Tags client question was successfully created.' }
        format.json { render json: @tags_client_question, status: :created, location: @tags_client_question }
      else
        format.html { render action: "new" }
        format.json { render json: @tags_client_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tags_client_questions/1
  # PUT /tags_client_questions/1.json
  def update
    @tags_client_question = TagsClientQuestion.find(params[:id])

    respond_to do |format|
      if @tags_client_question.update_attributes(params[:tags_client_question])
        format.html { redirect_to @tags_client_question, notice: 'Tags client question was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tags_client_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags_client_questions/1
  # DELETE /tags_client_questions/1.json
  def destroy
    @tags_client_question = TagsClientQuestion.find(params[:id])
    @tags_client_question.destroy

    respond_to do |format|
      format.html { redirect_to tags_client_questions_url }
      format.json { head :ok }
    end
  end
end
