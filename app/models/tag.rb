class Tag < ActiveRecord::Base
  belongs_to :thought
  attr_accessible :tag
end
