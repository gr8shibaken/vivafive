class Job < ActiveRecord::Base
  default_scope :order => "created_at DESC"
  has_many    :orders
  belongs_to  :tag
  belongs_to  :professional, :foreign_key => 'professional', :class_name => 'User'
  has_many  :jobs_client_question
  has_many  :client_questions, :through => :jobs_client_question
end
