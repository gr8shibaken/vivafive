class TagsProfessionalQuestion < ActiveRecord::Base
  belongs_to :tag
  belongs_to :professional_question
end
