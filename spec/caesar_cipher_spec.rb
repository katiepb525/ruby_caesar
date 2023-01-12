# frozen_string_literal: true

require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'returns a ciphered single letter word' do
    expect(caesar_cipher('hello', -3)).to eql('ebiil')
  end

  it 'returns a ciphered sentence' do
    expect(caesar_cipher('hello there', -3)).to eql('ebiil qebob')
  end

  it 'returns cipher with captial letters' do
    expect(caesar_cipher('Hello', -3)).to eql('Ebiil')
  end

  it 'works with different shift factors' do
    expect(caesar_cipher('hello', -2)).to eql('fcjjm')
  end

  it 'only string input is allowed' do
    expect(caesar_cipher(1234, -3)).to eql('error! not a string...')
    expect(caesar_cipher([2, 4, 7], -3)).to eql('error! not a string...')
  end
end
