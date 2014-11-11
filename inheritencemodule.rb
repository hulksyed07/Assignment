module Calculate
 def wheels_product_price
   return self.no_of_wheels*self.price
 end
end


class Vehicle
 include Calculate
 attr_accessor :no_of_wheels,:color,:price,:brand
 def initialize(no_of_wheels,color,price,brand)
  @no_of_wheels=no_of_wheels
  @color=color
  @price=price
  @brand=brand
 end
 def special_calculate
  puts "The special calculation of vehicle is #{wheels_product_price}"
 end
end


class Bike<Vehicle
 attr_accessor :biker
 def initialize(no_of_wheels,color,price,brand)
  @no_of_wheels=no_of_wheels
  @color=color
  @price=price
  @brand=brand
  @biker=biker
 end
 def special_calculate
  puts "The special calculation of Bike is #{wheels_product_price}"
 end
end


class Car<Vehicle
 attr_accessor :driver
 def initialize(no_of_wheels,color,price,brand)
  @no_of_wheels=no_of_wheels
  @color=color
  @price=price
  @brand=brand
  @driver=driver
 end
 def special_calculate
  puts "The special calculation of car is #{wheels_product_price}"
 end
end


class Bus<Vehicle
 attr_accessor :bus_driver
 def initialize(no_of_wheels,color,price,brand)
  @no_of_wheels=no_of_wheels
  @color=color
  @price=price
  @brand=brand
  @bus_driver=bus_driver
 end
 def special_calculate
  puts "The special calculation of Bus is #{wheels_product_price}"
 end
end


magic=Vehicle.new(4,"Black",300000,"Tata")

magic.special_calculate

stunner=Bike.new(2,"Black",55000,"honda")
stunner.special_calculate