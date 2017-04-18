class String
  define_method(:scrabble) do
    score = 0
    characters = self.upcase().split('')
    letters1 = ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']
    letters2 = ['D', 'G']
    letters3 = ['B','C','M','P']
    letters4 = ['F', 'H', 'V', 'W', 'Y']
    letters5 = ['K']
    letters8 = ['J', 'X']
    letters10 = ['Q', 'Z']
    characters.each() do |character|
      if letters1.include?(character)
      score += 1
    elsif letters2.include?(character)
      score += 2
    elsif letters3.include?(character)
      score += 3
    elsif letters4.include?(character)
      score += 4
    elsif letters5.include?(character)
      score += 5
    elsif letters8.include?(character)
      score += 8
    else letters10.include?(character)
      score += 10
      end
    end
    score
  end
end
