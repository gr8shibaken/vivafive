class CreateProfessionalQuestions < ActiveRecord::Migration
  def change
    create_table :professional_questions do |t|
      t.string :title

      t.timestamps
    end
  end
end
