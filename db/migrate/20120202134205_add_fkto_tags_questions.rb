class AddFktoTagsQuestions < ActiveRecord::Migration
  def change
#    add_column :tags_questions, :tag_id, :integer
#    add_column :tags_questions, :question_id, :integer
    create_table :tags_questions do |t|
      t.integer :tag_id
      t.integer :question_id

      t.timestamps
    end
  end
end
