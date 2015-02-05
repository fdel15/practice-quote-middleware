require_relative '../quotes'

describe Quotes do
  let(:example) { Quotes.new()}

  it 'should be initialized as an array of quotes' do
    expect(example.quotes.kind_of?(Array)).to be true
  end
end
