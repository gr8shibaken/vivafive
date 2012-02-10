class TagsClientQuestion < ActiveRecord::Base
  belongs_to :tag
  belongs_to :client_question
end