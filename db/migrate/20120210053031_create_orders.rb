class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer     :client
      t.integer     :professional
      t.references  :job
      t.timestamps
    end
  end
end
