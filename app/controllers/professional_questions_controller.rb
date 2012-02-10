class ProfessionalQuestionsController < ApplicationController
  # GET /professional_questions
  # GET /professional_questions.json
  def index
    @professional_questions = ProfessionalQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @professional_questions }
    end
  end

  # GET /professional_questions/1
  # GET /professional_questions/1.json
  def show
    @professional_question = ProfessionalQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @professional_question }
    end
  end

  # GET /professional_questions/new
  # GET /professional_questions/new.json
  def new
    @professional_question = ProfessionalQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @professional_question }
    end
  end

  # GET /professional_questions/1/edit
  def edit
    @professional_question = ProfessionalQuestion.find(params[:id])
  end

  # POST /professional_questions
  # POST /professional_questions.json
  def create
    @professional_question = ProfessionalQuestion.new(params[:professional_question])

    respond_to do |format|
      if @professional_question.save
        format.html { redirect_to @professional_question, notice: 'Professional question was successfully created.' }
        format.json { render json: @professional_question, status: :created, location: @professional_question }
      else
        format.html { render action: "new" }
        format.json { render json: @professional_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /professional_questions/1
  # PUT /professional_questions/1.json
  def update
    @professional_question = ProfessionalQuestion.find(params[:id])

    respond_to do |format|
      if @professional_question.update_attributes(params[:professional_question])
        format.html { redirect_to @professional_question, notice: 'Professional question was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @professional_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professional_questions/1
  # DELETE /professional_questions/1.json
  def destroy
    @professional_question = ProfessionalQuestion.find(params[:id])
    @professional_question.destroy

    respond_to do |format|
      format.html { redirect_to professional_questions_url }
      format.json { head :ok }
    end
  end
end
