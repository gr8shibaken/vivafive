class Order < ActiveRecord::Base
  belongs_to  :job
  belongs_to  :professional, :foreign_key => 'professional' , :class_name => 'User'
  belongs_to  :client      , :foreign_key => 'client'       , :class_name => 'User'
end