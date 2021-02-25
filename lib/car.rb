class Car
  attr_reader :make,
              :model,
              :color,
              :year,
              :age

  def initialize({description:'#{color} #{make} #{model}', year: '#{year}'})
    @make = 'Ford'
    @model = 'Mustang'
    @color = 'Green'
    @year = '1967'
    @age = '54'
  end
end
