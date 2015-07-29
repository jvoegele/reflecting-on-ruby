class Shape
end;
class Circle < Shape
end;

Circle.superclass
Circle.ancestors

module Drawable
end;
class Square
  include Drawable
end;
class Triangle
  prepend Drawable
end;

Square.ancestors
Triangle.ancestors

class Module
  alias_method :original_ancestors,
               :ancestors
  def ancestors
    original_ancestors.reject { |a|
      a == PP::ObjectMixin
    }
  end
end;

# Camping example:
class Help < R '/help'
  def get
    # rendering for HTTP GET...
  end
end;
