class User < ActiveRecord::Base
  has_many  :jobs             , :foreign_key => 'professional', :class_name => 'Job'  , :dependent => :destroy
  has_many  :order_receipts   , :foreign_key => 'professional', :class_name => 'Order', :dependent => :destroy
  has_many  :order_placements , :foreign_key => 'client'      , :class_name => 'Order', :dependent => :destroy      
end
