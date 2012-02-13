class OrdersClientQuestion < ActiveRecord::Base
  belongs_to :order
  belongs_to :client_question
end
