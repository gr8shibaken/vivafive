class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer     :professional
      t.references  :tag
      t.string      :client_question_ids
      t.timestamps
    end
  end
end
