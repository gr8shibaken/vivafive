class AddFktoTagsQuestions < ActiveRecord::Migration
  def change
    add_column :tags_questions, :tag_id, :integer
    add_column :tags_questions, :question_id, :integer
  end
end
