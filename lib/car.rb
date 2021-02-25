class Car
  attr_reader :make,
              :model,
              :color,
              :year,
              :age

  def initialize(info)
    @make = info[:description].split(" ").to_a[1]
    @model = info[:description].split(" ").to_a[2]
    @color = info[:description].split(" ").to_a[0]
    @year = info[:year]
    @age = (2021 - (info[:year].to_i)).to_s
  end

end
