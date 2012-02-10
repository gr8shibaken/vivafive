class Job < ActiveRecord::Base
  has_many    :orders
  belongs_to  :tag
  belongs_to  :professional, :foreign_key => 'professional', :class_name => 'User'
end
