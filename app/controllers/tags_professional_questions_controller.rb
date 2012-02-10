class TagsProfessionalQuestionsController < ApplicationController
  # GET /tags_professional_questions
  # GET /tags_professional_questions.json
  def index
    @tags_professional_questions = TagsProfessionalQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tags_professional_questions }
    end
  end

  # GET /tags_professional_questions/1
  # GET /tags_professional_questions/1.json
  def show
    @tags_professional_question = TagsProfessionalQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tags_professional_question }
    end
  end

  # GET /tags_professional_questions/new
  # GET /tags_professional_questions/new.json
  def new
    @tags_professional_question = TagsProfessionalQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tags_professional_question }
    end
  end

  # GET /tags_professional_questions/1/edit
  def edit
    @tags_professional_question = TagsProfessionalQuestion.find(params[:id])
  end

  # POST /tags_professional_questions
  # POST /tags_professional_questions.json
  def create
    @tags_professional_question = TagsProfessionalQuestion.new(params[:tags_professional_question])

    respond_to do |format|
      if @tags_professional_question.save
        format.html { redirect_to @tags_professional_question, notice: 'Tags professional question was successfully created.' }
        format.json { render json: @tags_professional_question, status: :created, location: @tags_professional_question }
      else
        format.html { render action: "new" }
        format.json { render json: @tags_professional_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tags_professional_questions/1
  # PUT /tags_professional_questions/1.json
  def update
    @tags_professional_question = TagsProfessionalQuestion.find(params[:id])

    respond_to do |format|
      if @tags_professional_question.update_attributes(params[:tags_professional_question])
        format.html { redirect_to @tags_professional_question, notice: 'Tags professional question was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tags_professional_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags_professional_questions/1
  # DELETE /tags_professional_questions/1.json
  def destroy
    @tags_professional_question = TagsProfessionalQuestion.find(params[:id])
    @tags_professional_question.destroy

    respond_to do |format|
      format.html { redirect_to tags_professional_questions_url }
      format.json { head :ok }
    end
  end
end
