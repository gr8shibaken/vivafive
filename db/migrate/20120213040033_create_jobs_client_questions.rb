class CreateJobsClientQuestions < ActiveRecord::Migration
  def change
    create_table :jobs_client_questions do |t|
      t.references :job
      t.references :client_question
      t.timestamps
    end
  end
end
