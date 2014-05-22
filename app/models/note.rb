class Note < ActiveRecord::Base
  validates :description, presence: true
  validates :code_sample, presence: true
end