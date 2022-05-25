require "cat"

RSpec.describe Cat do
  it "creates a lost cat" do
    sam = Cat.new("Sam", "Tabby","07415563380", "12345678")
    expect(sam.name).to eq "Sam"
    expect(sam.tel).to eq "07415563380"
    expect(sam.breed).to eq "Tabby"
  end
end
