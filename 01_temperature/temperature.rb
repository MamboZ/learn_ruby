require 'mathn'

def temperature
  def ftoc(val)
    (val-32)*5/9
  end

  def ctof(val)
    val*9/5+32
  end
end

print  temperature.ctof(37)