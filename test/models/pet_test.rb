require "test_helper"

class PetTest < ActiveSupport::TestCase
  test 'does not create a pet without a name' do
    pet = Pet.new(address: 'Mourato Coelho', species: 'cat', found_on: Date.current)
    assert_equal false, pet.valid?
  end

  test '#found_days_ago return an Integer' do
    mourato = pets(:mourato)
    assert_instance_of Integer, mourato.found_days_ago
  end

  test '#found_days_ago return the correct number' do
    mourato = pets(:mourato)
    assert_equal 3, mourato.found_days_ago
  end
end
