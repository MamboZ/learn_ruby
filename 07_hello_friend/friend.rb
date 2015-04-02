class Friend
  def greeting(who=nil)
    rs=""
    vh = "Hello"
    if who.equal?nil
      rs<<vh<<"!"
      else rs=vh<<", "<<who<<"!"
    end
  end
end

 puts f= Friend.new.greeting()