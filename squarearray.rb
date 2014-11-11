#Program to calculate and return square of the No. array

def square(a)
 a.collect {|element| element*element}
end
puts square([1,2,3,4]).inspect