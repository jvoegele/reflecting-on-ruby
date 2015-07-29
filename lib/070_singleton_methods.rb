string = 'foobar';
def string.exclaim
  self + '!'
end;

string.exclaim
'foobar'.exclaim

string.singleton_methods

symbol = :foobar
def symbol.exclaim
  self.to_s + '!'
end

class Foobar
  def Foobar.class_method
    puts("self is #{self}")
  end
  def self.another_class_method
    puts("self is #{self}")
  end
end;

Foobar.class_method;
Foobar.another_class_method;

Foobar.singleton_methods
Foobar.instance_methods(false)
