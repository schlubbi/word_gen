require 'spec_helper'
require 'word_gen'

describe WordGen::Generator do
  let(:generator) { build_generator(1, WordGen::Modes::NUMERIC) }

  it 'writes to stdout by default' do
    expect($stdout).to receive(:puts).exactly(10).times
    generator.start
  end

  it 'can write to a file' do
    file_name = 'test'
    File.open file_name, 'w+' do |file|
      build_generator(1, WordGen::Modes::NUMERIC, file).start
    end
    expect(`wc -l #{file_name}`).to include('10')
  end

  it 'supports all modes' do
    WordGen::Modes.constants.each do |m|
      set = WordGen::Modes.class_eval m.to_s
      g = build_generator(1, set, FakeWriter.new)
      expect(g.start).to eq(set.size)
    end
  end

  it 'does not work for a word length of zero' do
    expect {build_generator(0, WordGen::Modes::NUMERIC)}.to raise_error(ArgumentError)
  end

  it 'does not work for a negative word length' do
    expect {build_generator(-1, WordGen::Modes::NUMERIC)}.to raise_error(ArgumentError)
  end

  def build_generator(word_length, mode, writer = nil)
    if writer
      described_class.new(word_length, mode, writer)
    else
      described_class.new(word_length, mode)
    end
  end

  class FakeWriter
    def puts(*)
      # NoOp
    end
  end
end
