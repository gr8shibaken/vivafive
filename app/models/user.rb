class User < ActiveRecord::Base
  has_many  :jobs             , :foreign_key => 'professional', :class_name => 'Job'  , :dependent => :destroy
  has_many  :order_placements , :foreign_key => 'client'      , :class_name => 'Order', :dependent => :destroy  
  
  def order_receipts
    order_receipts = []
    self.jobs.each do |job|
      job.orders.each do |order|
        order_receipts.push(order)
      end
    end
    order_receipts
  end
end
