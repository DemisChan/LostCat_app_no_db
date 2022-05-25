require "cat"
require "lostcats"

RSpec.describe CatsList do
  it "adds multiple cats to lost page" do
    sam = Cat.new("Sam", "Tabby","07415563380", "12345678")
    dom = Cat.new("Dom", "Persian","07415563390", "87654321")
    
    cats_list = CatsList.new
    cats_list.add(sam)
    cats_list.add(dom)
    
    expect(cats_list.report).to eq [
      sam,
      dom
    ]
  end

  it "adds multiple cats to lost page and deletes one on particular index" do
    sam = Cat.new("Sam", "Tabby","07415563380", "12345678")
    dom = Cat.new("Dom", "Persian","07415563390", "87654321")
    
    cats_list = CatsList.new
    cats_list.add(sam)
    cats_list.add(dom)
    
    cats_list.remove(0)
    expect(cats_list.report).to eq [
      dom
    ]
  end

  it "gets a single cat" do
    sam = Cat.new("Sam", "Tabby","07415563380", "12345678")
    dom = Cat.new("Dom", "Persian","07415563390", "87654321")

    cats_list = CatsList.new
    cats_list.add(sam)
    cats_list.add(dom)

    expect(cats_list.get(0)).to eq sam
  end

  it "updates a cat entry" do
    sam = Cat.new("Sam", "Tabby","07415563380", "12345678")
    dom = Cat.new("Dom", "Persian","07415563390", "87654321")

    cats_list = CatsList.new
    cats_list.add(sam)
    cats_list.add(dom)
    updated_cat = Cat.new("Matt", "Russian","07415563380", "12345678")
    cats_list.update(0, updated_cat)

    expect(cats_list.report).to eq [
      updated_cat, 
      dom
    ]
  end
end
