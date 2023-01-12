require './lib/caesar_cipher'

describe "#caesar_cipher" do
  it "returns a ciphered single letter word" do
    expect(caesar_cipher('hello', -3)).to eql('ebiil')
  end

  it "returns a ciphered sentence" do 
    expect(caesar_cipher('hello there', -3)).to eql('ebiil qebob')
  end
end
