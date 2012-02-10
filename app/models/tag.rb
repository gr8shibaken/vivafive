class Tag < ActiveRecord::Base
  default_scope :order => "id ASC"
  has_ancestry
  has_many :jobs
  has_many :tags_client_question
  has_many :client_questions, :through => :tags_client_question
  has_many :tags_professional_question
  has_many :professional_questions, :through => :tags_professional_question
end