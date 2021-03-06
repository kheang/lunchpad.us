require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  should have_many(:vendors)
  should have_many(:off_days)
  should have_many(:accounts)
  should have_many(:available_menu_items)

  should validate_presence_of(:name)
  should validate_presence_of(:phone)
  should validate_presence_of(:address)
end
