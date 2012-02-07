class Tag < ActiveRecord::Base
  has_ancestry
  has_one :title
  default_scope :order => "id ASC"
  belongs_to :job
  has_many :tags_question
  has_many :questions, :through => :tags_question
end
