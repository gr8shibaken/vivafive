class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description

      t.timestamps
    end
  end
end
