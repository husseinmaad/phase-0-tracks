require_relative 'guess'

describe Guessing do
  let(:guess1) {Guessing.new}

  it "get word method" do 
    expect(guess1.get_word("hi")).to eq ["h","i"]
  end  
  it "check the process method that should print the guess for one letter" do
    guess1.arr_w = ['w','f','e','w','r']
    guess1.arr_g = ['w']
    expect(guess1.process).to eq false 
  end  
  it "check the process method that should print the guess letter" do
    guess1.arr_w = ['w','f','e','w','r']
    guess1.arr_g = ['f','e','w','r']
    expect(guess1.process).to eq true
  end  
end