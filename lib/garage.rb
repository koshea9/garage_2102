class Garage
  attr_reader :name,
              :customers

  def initialize(name)
    @name = name
    @customers = []
  end

  def name
    @name = "Totally Safe Garage"
  end

  def add_customer(owner)
    @customers << owner
  end

  def all_cars
    customer_cars = []
    @customers.flat_map do |customer|
      customer_cars << customer.cars
    end
  end
end
