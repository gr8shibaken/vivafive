class Question < ActiveRecord::Base
  has_many :tags_question
  has_many :tags, :through => :tags_question
end
