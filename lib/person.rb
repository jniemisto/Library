class Person
  include HasAge

  attr_accessor :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def self.create(name, params)
    Person.new(name, params[:age])
  end

  def spell_name(&block)
    @name.each_char(&block)
  end

end
