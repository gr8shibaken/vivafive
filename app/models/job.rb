class Job < ActiveRecord::Base
  default_scope :order => "created_at DESC"
  has_many    :orders
  belongs_to  :tag
  belongs_to  :professional, :foreign_key => 'professional', :class_name => 'User'
  serialize   :client_question_ids
end
