class Tag < ActiveRecord::Base
  has_ancestry
  default_scope :order => "id ASC"
end
