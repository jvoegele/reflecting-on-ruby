class Person
  attr_accessor :name, :email
end;

Person.instance_methods(false)
me = Person.new
me.methods;
me.public_methods(false)

class Person
  private
  def boo!
    stack_trace = caller.take(5)
    puts(stack_trace);
  end;
end;
me.private_methods(false)

me.send(:boo!)

m = me.method(:email)
m.name
m.owner
m.receiver
m.source_location

