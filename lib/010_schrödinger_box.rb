class SchrödingerBox
  def peek!
    if rand > 0.5
      @cat = :dead
    else
      @cat = :alive
    end
  end
end;

box = SchrödingerBox.new;
box.instance_variables

box.peek!;
box.instance_variables
box.instance_variable_get(:@cat)

box2 = SchrödingerBox.new;
box2.instance_variables
