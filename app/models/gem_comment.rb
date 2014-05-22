class GemComment < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :code_sample, presence: true
end