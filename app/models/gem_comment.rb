class GemComment < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :code_sample, presence: true

  default_scope { order('name DESC') }
end