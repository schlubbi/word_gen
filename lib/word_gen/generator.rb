class WordGen::Generator

  attr_reader :word_length, :character_set

  def initialize word_length, character_set
    @word_length, @character_set = Integer(word_length), character_set.map(&:to_s)
  end

  def start
    printAllKLength character_set, word_length
  end

  private

  def printAllKLength char_set, k
    n = char_set.size
    printAllKLengthRec char_set, "", n, k
  end

  def printAllKLengthRec char_set, prefix, n, k
    if k == 0
      puts prefix
      return
    end

    n.times do |i|
      new_prefix = prefix + char_set[i]
      printAllKLengthRec char_set, new_prefix, n, k - 1
    end
  end
end
