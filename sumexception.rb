class BadDataException<RuntimeError
end

def sum(a,b)
 #Class of number variable is "Fixnum" and class of string is "String"
 if a.class==b.class
  c=a+b
  puts c
 else
  raise BadDataException,"You gave different Input type!"
 end
end

sum("Hello","World")
sum(2,3)
sum(2,"Hello")