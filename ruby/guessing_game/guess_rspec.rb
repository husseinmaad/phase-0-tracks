require_relative 'guess'

describe Guessing do
  let(:guess1) {Guessing.new}

  it "get word method" do 
    expect(guess1.get_word("hi")).to eq ["h","i"]
  end  
end