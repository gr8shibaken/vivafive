class TagsQuestion < ActiveRecord::Base
  belongs_to :tag
  belongs_to :question
end