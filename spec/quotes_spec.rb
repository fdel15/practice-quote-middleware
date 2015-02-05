require_relative '../quotes'

describe Quotes do
  let( :example ) { Quotes.new() }

  it 'should be initialized as an array of quotes' do
    expect( example.quotes.kind_of?(Array)).to be true
  end

  it 'should return one random quote' do
    expect( example.random.count ).to eq(1)
  end

  it 'should return a different quote each time random is called' do
    quote1 = example.random
    quote2 = example.random
    expect( quote1 == quote2 ).to be false
  end
end
