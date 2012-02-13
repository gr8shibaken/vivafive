class CreateOrdersClientQuestions < ActiveRecord::Migration
  def change
    create_table :orders_client_questions do |t|
      t.references :order
      t.references :client_question
      t.timestamps
    end
  end
end
