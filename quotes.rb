class Quotes
  attr_reader :quotes

  def initialize
    @quotes = File.foreach("fixtures/rickygervais.txt").map { |line| line.split("\n") }
  end

  def random
    @quotes.sample
  end
end