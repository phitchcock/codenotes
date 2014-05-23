class Note < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :code_sample, presence: true

  default_scope { order('title ASC') }
end