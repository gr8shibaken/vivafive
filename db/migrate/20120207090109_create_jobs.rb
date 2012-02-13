class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer     :professional
      t.references  :tag
      t.timestamps
    end
  end
end
