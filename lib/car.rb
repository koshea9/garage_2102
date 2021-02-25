class Car
  attr_reader :make,
              :model,
              :color,
              :year,
              :age

  def initialize(info)
    @make = info[:description].split(" ").to_a[1].to_s
    @model = info[:description].split(" ").to_a[2].to_s
    @color = info[:description].split(" ").to_a[0].to_s
    @year = info[:year]
    @age = (2021 - (info[:year].to_i))
  end


end
