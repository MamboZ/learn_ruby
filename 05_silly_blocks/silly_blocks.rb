def reverser(&block)
  tmpbl = yield.split(" ")
  res = ""
  tmpbl.each { |x|
    res+= " "+ x.reverse
  }
  return res.strip
end

def adder (adds=1, &block)
   block.call + adds
end

def repeater (x=0)
  if x == 0
    return yield
  else
    x.times do |n|
      yield
    end
  end
end
