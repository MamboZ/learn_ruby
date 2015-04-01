  def echo(val)
    val
  end

  def shout(val)
    val.upcase
  end

  def repeat(val, repVal =2)
    rs = ""
    for i in 1..repVal do
      rs = rs + " " + val
    end
    rs.lstrip
  end

  def start_of_word (str, strPos=1)
    str[0,strPos]
  end

  def first_word (str)
    str.split(' ')[0]
  end

  def titleize (str)
    rs = str.split(' ')[0].capitalize
    for i in 1..str.split(' ').length-1 do
      if (str.split(' ')[i].length > 4) ||
         (str.split(' ')[i].casecmp("kwai") == 0) # check name dictionary
        rs = rs + " " + str.split(' ')[i].capitalize
        else rs = rs + " " + str.split(' ')[i]
      end
    end
    rs
  end