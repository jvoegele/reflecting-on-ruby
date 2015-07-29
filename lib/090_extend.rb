module Math
  extend self
  def cosine
    puts("I don't remember trigonometry...");
  end
end
Math.cosine;

class Calculator
  include Math
end
Calculator.new.cosine;

obj = Object.new
obj.extend(Math)
obj.cosine;
