#Method to find the factorial of a number
def fact(num)
 f=1
 while num>0
  f=f*num
  num=num-1
 end
puts f
end

fact(4)

