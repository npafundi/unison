class Tasklist < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  validates :name, presence: true
  accepts_nested_attributes_for :tasks, allow_destroy: true
end
