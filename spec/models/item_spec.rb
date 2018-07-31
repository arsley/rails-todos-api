require 'rails_helper'

# test suite for the Item model
RSpec.describe Item, type: :model do
  # assosiation test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:todo) }
  # validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
end
