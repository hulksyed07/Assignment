def specialCase(a)
 b=a.split(//)
 c=[]
 i=0
 b.each do|element|
  if i%2==0
   c[i]=element.upcase
  else
   c[i]=element.downcase
  end
  i=i+1
 end

 #c=b.collect{|element| element.upcase}
 puts c.inspect
end

specialCase("This is a test")