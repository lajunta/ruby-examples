class Person
  attr_accessor :age,:name
  def initialize(age,name)
    @age=age
    @name=name
  end

  def laugh
    p "hahahaha."
  end
end


class Child < Person
  def laugh
    super
    p "child laugh"
  end

  def smile
    p 'child smile'
  end
end

gabido=Child.new(3,'gabido')
gabido.laugh
gabido.smile
p '----------------'
p gabido.name
p gabido.age
