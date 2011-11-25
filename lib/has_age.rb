module HasAge

  attr_accessor :age
  def adult?
    @age >= 18
  end

  def grow_up!
    @age = 18
  end

end
