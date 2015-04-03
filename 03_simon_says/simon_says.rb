  def echo(val)
    return val
  end

  def shout(val)
    return val.upcase
  end

  def repeat(val, repVal =2)
    nw = val.split(" ").repeated_combination(repVal).to_a
    return nw.join(" ")
  end

  def start_of_word (str, strPos=1)
    return str[0,strPos]
  end

  def first_word (str)
    return str.split(' ')[0]
  end

  def titleize (str)
    nocaps = "and over the if or not am" #not capitalized words
    tmp_str = str.split(" ")
    tmp_str.shift
    fword= Array.new(1, str.split(" ")[0].capitalize)
    fword_= tmp_str.map { |word| nocaps.include?(word) ? word : word.capitalize }
    return fword.concat(fword_).join(" ")
  end