# Simple class
class Parent
  def hello
    puts "Hello, world. From #{self}"
  end
end

# Simple child class
class Child < Parent

end

parent = Parent.new
parent.hello

child = Child.new
child.hello

pp child.class
pp child.class.superclass
pp child.class.superclass.superclass
pp child.class.superclass.superclass.superclass
pp child.class.superclass.superclass.superclass.superclass
