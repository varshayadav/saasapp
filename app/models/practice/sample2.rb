class GrandParent
  def method
    puts 'grand_parent'
  end
end

class Parent < GrandParent
  # def method
  #   puts 'hello'
  # end



  private
  $C = 10

  def p
    puts 'its private'
  end
end

class Child < Parent

  attr_accessor :name
  def initialize(n)
    @name="varsha"
  end

  def initialize
    @name="varsha"
  end



  def c
    p
    puts $C
  end

end

child = Child.new(2)
child.method
child.c
puts '---------------'
puts child.class
puts child.instance_variables