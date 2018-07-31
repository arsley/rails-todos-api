class Todo < ApplicationRecord
  # model assosiation
  has_many :items, dependent: :destroy

  # validation
  validates_presence_of :title, :created_by
end
