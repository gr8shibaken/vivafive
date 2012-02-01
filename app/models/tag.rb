class Tag < ActiveRecord::Base
  has_ancestry
  has_one :title
  default_scope :order => "id ASC"
end
