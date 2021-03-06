class JobsController < ApplicationController
  before_filter :login_check
  def index
    @jobs = Job.all

    respond_to do |format|
      format.html
      format.json { render json: @jobs }
    end
  end

  def show
    @job = Job.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @job }
    end
  end

  def new
    @job = Job.new
    @tags = Tag.where(:ancestry => nil)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job }
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    # TODO Refactor
    @job = Job.new(
      :tag => Tag.find(params[:job][:tag]),
      :professional => User.find(params[:job][:professional])
    )
    
    jobs_client_questions = []
    params[:job][:client_question_ids].each do |client_question_id|
      jobs_client_questions.push(
        JobsClientQuestion.new(
          :job              => @job,
          :client_question  => ClientQuestion.find(client_question_id)
        )
      )
    end
    
    success = false
    ActiveRecord::Base.transaction {
      if jobs_client_questions.blank?
        success = @job.save!
      else
        success = @job.save!&&jobs_client_questions.each do |jobs_client_question| jobs_client_question.save! end
      end
    }
   
    respond_to do |format|
      if success
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render json: @job, status: :created, location: @job }
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    respond_to do |format|
      format.html { redirect_to jobs_url }
      format.json { head :ok }
    end
  end
end
