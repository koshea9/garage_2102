require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'
require './lib/garage'

class GarageTest < Minitest::Test

  def setup
    @garage = Garage.new('Totally Safe Parking')
    @owner_1 = Owner.new('Regina George', 'Heiress')
    @owner_1.buy('1967 Green Ford Mustang')
    @owner_1.buy('2001 Blue Ford Escape')
    @owner_2 = Owner.new('Glen Coco', 'Unknown')
    @owner_2.buy('1963 Green Chevrolet Corvette')
    @owner_2.buy('2020 Silver Volvo XC90')
  end

  def test_it_exists

    assert_instance_of Garage, @garage
  end

  def test_it_has_readable_attributes
    assert_equal "Totally Safe Garage", @garage.name
  end

  def test_it_can_add_customer
    @garage.add_customer(@owner_1)
    @garage.add_customer(@owner_2)

    assert_equal [@owner_1, @owner_2], @garage.customers
  end

  def test_it_can_list_all_cars
    @garage.add_customer(@owner_1)
    @garage.add_customer(@owner_2)
    assert_equal @owner_1.cars, @owner_2.cars, @garage.all_cars
  end

  def test_it_can_list_cars_by_make
    @garage.add_customer(@owner_1)
    @garage.add_customer(@owner_2)

    expected = {
      'Ford' => [@owner_1],
      'Chevrolet' => [@owner_2],
      'Volvo' => [@owner_2]
    }
    assert_equal expected, @garage.cars_by_make
  end

end
