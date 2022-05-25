class Cat
  def initialize(name, breed, tel, password)
    # All contents are strings
    @name = name
    @breed = breed
    @tel = tel
    @@password = password
  end

  def name
    return @name
  end

  def tel
    return @tel
  end

  def breed
    return @breed
  end

  # def password
  #   # Returns the title
  # end
end
