class ProfessionalQuestion < ActiveRecord::Base
  has_many :tags_professional_question
  has_many :tags, :through => :tags_professional_question
end
