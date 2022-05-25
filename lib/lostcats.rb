class CatsList
  def initialize
    @list = []
  end

  def report
    # Returns a list of instances of Cat
    return @list
  end

  # # Create
  def add(cat) # advert is an instance of Cat
    @list << cat
  end

  # # Read
  def get(index) # index is a number
    # Returns an advert, the advert at the given index
    return @list[index]
  end

  # # Update
  def update(index, updated_cat) # index is a number, udpated_cat is instance of Cat
    @list[index] = updated_cat
  end

  # # Delete
  def remove(index) # index is a number
    @list.delete_at(index)
  end
end
