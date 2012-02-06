class CreateTagQRelations < ActiveRecord::Migration
  def change
    create_table :tag_q_relations do |t|
      t.integer :tag_id
      t.integer :question_id

      t.timestamps
    end
  end
end
