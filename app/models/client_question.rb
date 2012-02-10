class ClientQuestion < ActiveRecord::Base
  has_many :tags_client_question
  has_many :tags, :through => :tags_client_question
end
