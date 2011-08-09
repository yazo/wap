class Software < ActiveRecord::Base
  has_and_belongs_to_many :software_types
end
