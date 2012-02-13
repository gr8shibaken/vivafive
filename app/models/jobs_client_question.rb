class JobsClientQuestion < ActiveRecord::Base
  belongs_to :job
  belongs_to :client_question
end
