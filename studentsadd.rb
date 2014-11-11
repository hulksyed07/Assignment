class InputException<RuntimeError
end
class Student
 #attr_accessor :roll_no,:name,:age,:gender
  def roll_no
  @roll_no
 end
 def roll_no=(roll_no)
  @roll_no=roll_no
 end
 def name
  @name
 end
 def name=(name)
  @name=name
 end
 def age
  @age
 end
 def age=(age)
  @age=age
 end
 def gender
  @gender
 end
 def gender=(gender)
  @gender=gender
 end
 
 def initialize(roll_no,name,age,gender)
  @roll_no=roll_no
  @name=name
  @age=age
  @gender=gender
 end

 
end

class ActionClass
 def initialize
  @students=[]
 end
 def add_student(student)
  @students<<student
 end
 def sort_array(param)
  if param=="roll_no"
   @students.sort! { |a,b| a.roll_no <=> b.roll_no }
  elsif param=="name"
   @students.sort! { |a,b| a.name.downcase <=> b.name.downcase }
  elsif param=="age"
   @@students.sort! { |a,b| a.age <=> b.age}
  else 
   raise InputException,"Please enter a type of sorting"
  end
 end
 def show_sorted_array
  puts @students.inspect
 end
end

student1=Student.new(1,"amita",19,"female")
student2=Student.new(2,"sarita",18,"female")
student3=Student.new(3,"pappu",20,"male")
test=ActionClass.new
test.add_student(student1)
test.add_student(student2)
test.add_student(student3)

test.sort_array("name")
test.show_sorted_array

test.sort_array("roll_no")
test.show_sorted_array

