def translate (str)
  res = " "

  def checkVowel (str)
    rs = true
    vowel="eyuioa"
    b = vowel[str[0]]
    if b.equal?nil
      rs= false
    end
    rs
  end

  def checkConsonant(str)
    rs = true
    consonant="qwrtpsdfghjklzxcvbnm"
    b = consonant[str[0]]
    if b.equal?nil
      rs= false
    end
    rs
  end

  for i in 0..str.split(' ').length-1 do
    tmpstr = str.split(' ')[i]
    if checkVowel(tmpstr)
      res=res + tmpstr<<"ay"
    end
    if checkConsonant(tmpstr)
      if tmpstr[0..1] == "qu"
        res= res + tmpstr.delete(tmpstr[0..1])<<tmpstr[0..1]+"ay"
      elsif tmpstr[0..2] == "sch"
        res= tmpstr.delete(tmpstr[0..2])<<tmpstr[0..2]+"ay"
        else
          j = 0
          res_=""
          begin
            res_= tmpstr.delete(tmpstr[0..j])<<tmpstr[0..j]
            j+=1
          end while checkConsonant(tmpstr[j])
          res = res + res_ + "ay"
      end
    end
    res<<" "
  end

  return res.strip
end

# print  translate("quiet")#("hello i say yes")