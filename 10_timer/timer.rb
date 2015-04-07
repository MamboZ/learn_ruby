class Timer
  def initialize
    @timer = Time.new(0)
  end

  def seconds
    @timer.to_i+62167226524
  end

  def seconds=(seconds)
    @timer+= seconds
    @seconds = seconds
  end

  def time_string
    padded(seconds)
    @timer.strftime("%H:%M:%S")
  end

  def padded( inSec)
    tmmp = inSec.to_s
    case tmmp.length
      when 1
        "0#{tmmp}"
      when 2
        tmmp
    end
  end

end