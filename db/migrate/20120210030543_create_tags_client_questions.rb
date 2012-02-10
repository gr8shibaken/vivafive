class CreateTagsClientQuestions < ActiveRecord::Migration
  def change
    create_table :tags_client_questions do |t|
      t.integer :tag_id
      t.integer :client_question_id

      t.timestamps
    end
  end
end
