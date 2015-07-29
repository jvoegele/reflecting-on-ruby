# Derived from
# http://rubylearning.com/blog/2010/11/30/how-do-i-build-dsls-with-yield-and-instance_eval/

class Recipe
  attr_accessor :name, :ingredients, :instructions

  def initialize(name, &block)
    self.name = name
    self.ingredients = []
    self.instructions = []

    self.instance_eval(&block)
  end

  def ingredient(name, amount: nil)
    ingredient = name.dup
    ingredient << " (#{amount})" if amount

    ingredients << ingredient
  end

  def step(text, duration: nil)
    instruction = text.dup
    instruction << " (#{duration})" if duration

    instructions << instruction
  end

  def to_s
    output = name
    output << "\n#{'=' * name.size}\n\n"
    output << "Ingredients: #{ingredients.join(', ')}\n\n"

    instructions.each_with_index do |instruction, index|
      output << "#{index + 1}) #{instruction}\n"
    end

    output
  end
end
