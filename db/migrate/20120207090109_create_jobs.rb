class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :tag
      t.timestamps
    end
  end
end
