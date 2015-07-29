string = 'foobar';
class << string
  puts("Singleton class for string: #{self}");
  def exclaim
    self + '!'
  end;
end;

class Foobar
  class << self
    puts("Singleton class for Foobar: #{self}");
    def class_method
      puts("self is #{self}")
    end
    def another_class_method
      puts("self is #{self}")
    end
  end
end;

