class CreateTagsClientQuestions < ActiveRecord::Migration
  def change
    create_table :tags_client_questions do |t|
      t.references :tag
      t.references :client_question
      t.timestamps
    end
  end
end
