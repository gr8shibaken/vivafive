class Question < ActiveRecord::Base
  has_many :tags_question
  has_many :tags, :through => :tags_question

# has_many :tag_q_relation
# has_many :tags, :through => :tag_q_relation
end
