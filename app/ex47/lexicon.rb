class Lexicon

  def Lexicon.scan(line)
    words = line.split
    result = []
    words.each do |word|
      recognise = false
      ['north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back'].each do |i|
        if i == word
            result.push(['direction', word])
            recognise = true
          end
      end
      ['go', 'stop', 'kill', 'eat'].each do |i|
        if i == word
          result.push(['verb', word])
          recognise = true
        end
      end
      ['the', 'in', 'of', 'from', 'at', 'it'].each do |i|
        if i == word
          result.push(['stop', word])
          recognise = true
        end
      end
       ['door', 'bear', 'princess', 'cabinet'].each do |i|
        if i == word
          result.push(['noun', word])
          recognise = true
        end
       end
      number = Lexicon.convert_number(word)
      if number != nil
        result.push(['number', number])
        recognise = true
      end

      if recognise == false
        result.push(['error', word])
      end
    end
    if result.length > 0
      return result
    else
      return nil
    end

  end

  def Lexicon.convert_number(object)
    begin
      return Integer(object)
    rescue
      return nil
    end
  end

end