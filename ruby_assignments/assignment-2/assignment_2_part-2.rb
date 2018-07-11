# 1. Write a method which takes 3 arguments number1, number2, block and return the output
# Create 4 blocks which can be passed as 3rd arguments: operations can be added, subtract, multiply, divide

a = ->(x,y) {x+y}
s = ->(x,y) {x-y}
m = ->(x,y) {x*y}
d = ->(x,y) {x/y}

def my_methods(number1,number2,block)
  puts block.call number1,number2
end

my_methods(10,3,a)
my_methods(10,3,s)
my_methods(10,3,m)
my_methods(10,3,d)

# 2. write a method: "compose" which takes two procs and returns a new proc which, when called, calls the first proc and passes its result into the second proc. both of the proc arguments takes a number argument

def compose proc1, proc2
  Proc.new { |x| proc2.call(proc1.call(x)) }
end

double = Proc.new { |x| x + x }
square = Proc.new { |x| x * x }

doubleThenSquare = compose double, square
puts doubleThenSquare.call(5)

# 3. Write a lambda which takes first_name and last_name and returns full_name.

my_lambda = lambda{|x,y| puts"full_name  :"+ x+" "+y}
my_lambda.call("ravi","karale")


