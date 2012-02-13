class ClientQuestion < ActiveRecord::Base
  has_many :tags_client_question
  has_many :tags, :through => :tags_client_question
  has_many :orders_client_question
  has_many :orders, :through => :orders_client_question
  has_many :jobs_client_question
  has_many :jobs, :through => :jobs_client_question
end
