require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'

class OwnerTest < Minitest::Test

  def setup
    @owner_1 = Owner.new('Regina George', 'Heiress')
  end

  def test_it_exists

    assert_instance_of Owner, @owner_1
  end

  def test_it_has_readable_attributes
    assert_equal 'Regina George', @owner_1.name
    assert_equal 'Heiress', @owner_1.occupation
    assert_equal [], @owner_1.cars
  end

  def test_it_can_buy
    @owner_1.buy('1967 Green Ford Mustang')

    assert_equal cars.length = 1, @owner_1.cars

    @owner_1.buy('2001 Silver BMW 3-Series')

    assert_equal cars.length = 2, @owner_1.cars

    @owner_1.buy('1963 Red Chevrolet Corvette')

  end
end
