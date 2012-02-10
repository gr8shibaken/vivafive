class ClientQuestionsController < ApplicationController
  # GET /client_questions
  # GET /client_questions.json
  def index
    @client_questions = ClientQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @client_questions }
    end
  end

  # GET /client_questions/1
  # GET /client_questions/1.json
  def show
    @client_question = ClientQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client_question }
    end
  end

  # GET /client_questions/new
  # GET /client_questions/new.json
  def new
    @client_question = ClientQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client_question }
    end
  end

  # GET /client_questions/1/edit
  def edit
    @client_question = ClientQuestion.find(params[:id])
  end

  # POST /client_questions
  # POST /client_questions.json
  def create
    @client_question = ClientQuestion.new(params[:client_question])

    respond_to do |format|
      if @client_question.save
        format.html { redirect_to @client_question, notice: 'Client question was successfully created.' }
        format.json { render json: @client_question, status: :created, location: @client_question }
      else
        format.html { render action: "new" }
        format.json { render json: @client_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /client_questions/1
  # PUT /client_questions/1.json
  def update
    @client_question = ClientQuestion.find(params[:id])

    respond_to do |format|
      if @client_question.update_attributes(params[:client_question])
        format.html { redirect_to @client_question, notice: 'Client question was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @client_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_questions/1
  # DELETE /client_questions/1.json
  def destroy
    @client_question = ClientQuestion.find(params[:id])
    @client_question.destroy

    respond_to do |format|
      format.html { redirect_to client_questions_url }
      format.json { head :ok }
    end
  end
end
