class WordGen::Generator

  attr_reader :word_length, :character_set, :writer

  def initialize word_length, character_set, writer = $stdout
    @word_length, @character_set, @writer = Integer(word_length), character_set.map(&:to_s), writer

    if @word_length < 1
      fail ArgumentError, 'word_length need to be positibe'
    end
  end

  def start
    printAllKLengthRec character_set, "", character_set.size, word_length
  end

  private

  def printAllKLengthRec char_set, prefix, n, k
    if k == 0
      writer.puts prefix
      return
    end

    n.times do |i|
      new_prefix = prefix + char_set[i]
      printAllKLengthRec char_set, new_prefix, n, k - 1
    end
  end
end
