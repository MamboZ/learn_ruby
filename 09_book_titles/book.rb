class Book
  def initialize()
    @book
  end

  def title
    titleize(@title)
  end

  def title=(title)
    @title = title
  end

  private

  def titleize(str)
    nocaps = %w(and over the a an if or not am of in) #not capitalized words
    tmp_str = str.split(" ")
    tmp_str= tmp_str.map { |word| nocaps.include?(word) ? word : word.capitalize }.join(" ")
    tmp_str[0] = tmp_str[0].capitalize
    return tmp_str
	end

end