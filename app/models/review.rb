class Model < ActiveRecord::Base
  belongs_to :movie

  validates :description, :presence => true
end
