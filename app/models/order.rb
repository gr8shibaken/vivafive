class Order < ActiveRecord::Base
  belongs_to  :job
  belongs_to  :professional, :foreign_key => 'professional' , :class_name => 'User'
  belongs_to  :client      , :foreign_key => 'client'       , :class_name => 'User'
  has_many  :orders_client_question
  has_many  :client_questions, :through => :orders_client_question
end