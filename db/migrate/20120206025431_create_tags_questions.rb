class CreateTagsQuestions < ActiveRecord::Migration
  def change
    create_table :tags_questions do |t|
      t.integer :tag_id
      t.integer :question_id

      t.timestamps
    end
  end
end
