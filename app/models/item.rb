class Item < ApplicationRecord
  # model assosiation
  belongs_to :todo

  # validation
  validates_presence_of :name
end
