class Task < ActiveRecord::Base
  attr_accessible :finished, :list_id, :name

  belongs_to :list
end
