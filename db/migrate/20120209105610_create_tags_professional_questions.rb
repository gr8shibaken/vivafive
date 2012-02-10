class CreateTagsProfessionalQuestions < ActiveRecord::Migration
  def change
    create_table :tags_professional_questions do |t|
      t.integer :tag_id
      t.integer :professional_question_id

      t.timestamps
    end
  end
end
