'foobar'.class
String.class
Class.class
Class.class.class.class

class ClassesAreExecutableScopes
  puts("self is #{self}");
  puts("self.class is #{self.class}");
  puts("self.new? #{self.new}");
end;

DynamicClass = Class.new do
  puts("self is #{self}");
  def an_instance_method
    # ...
  end;
end;
