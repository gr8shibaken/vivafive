class CreateTagsProfessionalQuestions < ActiveRecord::Migration
  def change
    create_table :tags_professional_questions do |t|
      t.references :tag
      t.references :professional_question
      t.timestamps
    end
  end
end
