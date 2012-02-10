class CreateClientQuestions < ActiveRecord::Migration
  def change
    create_table :client_questions do |t|
      t.string :title

      t.timestamps
    end
  end
end
