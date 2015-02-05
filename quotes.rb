class Quotes
  attr_reader :quotes

  def initialize(textfile)
    @quotes = File.foreach(textfile).map { |line| line.split("\n") }
  end

  def random
    @quotes.sample
  end
end