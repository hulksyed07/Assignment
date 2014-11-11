def keyValue(a)
 #gsub does multiple substitution at a time while sub does single substitution at a time
 #a.each {|key,value| puts "#{key}is a #{value}"}
 
 #a.each do |key,value|
  #puts "#{key} is a #{value}"
 #end

 a.each do |key,value|
  a="#{key}".gsub('_',' ')
  b="#{value}".gsub('_',' ')
  puts "#{a} is a #{b}"
 end
end
a={:sachin_tendulkar=>'batsman',:zaheer_khan=>'bowler',:m_s_dhoni=>'wicket_keeper'}
keyValue(a)
puts "scahin_tendulkar".gsub('_',' ')