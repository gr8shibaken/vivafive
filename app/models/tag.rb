class Tag < ActiveRecord::Base
  has_ancestry
  has_one :title
  default_scope :order => "id ASC"
  belongs_to :job
  has_many :tags_client_question
  has_many :client_questions, :through => :tags_client_question
  has_many :tags_professional_question
  has_many :professional_questions, :through => :tags_professional_question
end
