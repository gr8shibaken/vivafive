class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :description
      t.references :tag
      t.timestamps
    end
  end
end
