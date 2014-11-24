class JobKeyword < ActiveRecord::Base
  belongs_to :job
  belongs_to :keyword
end
