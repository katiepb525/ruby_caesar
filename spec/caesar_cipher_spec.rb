require './lib/caesar_cipher'

describe "#caesar_cipher" do
  it "returns a ciphered single letter word" do
    expect(caesar_cipher('Hello', -3)).to eql('Ebiil')
  end
end