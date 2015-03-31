require 'mathn'
# require 'math'
def add (val1, val2)
  val1+val2
end

def subtract(val1,val2)
  val1-val2
end

def sum (arval)
  $rs=0
  for i in arval
    $rs=$rs+i
  end
  $rs
end
def calculator

# def multiply(arval)
#   rs=1
#   for i in arval
#     rs = rs * i
#   end
#   rs
# end

def multiply(val1,val2)
  val1*val2
end

def power(y,x)
  y**x
end

def factorial(val)
  rs = 1
  for i in 1..val do
    rs= rs*i
  end
  rs
end
end


# print calculator.multiply([2,3])
# print calculator.factorial(10)