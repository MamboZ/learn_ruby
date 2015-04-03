class Friend
  def greeting(who=nil)
    return who.equal?(nil)?"Hello!": "Hello, #{who}!"
  end
end