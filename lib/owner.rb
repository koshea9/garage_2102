class Owner
  attr_reader :name,
              :occupation,
              :cars
  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
  end

  def buy(info)
    info =
    make = info.split(" ")[1][:description]
    @model = info.split(" ")[2][:description]
    @color = info.split(" ")[0][:decription]
    Car.new({description: info, year: info.last})
  end
end
