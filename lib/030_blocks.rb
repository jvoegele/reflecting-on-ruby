class Object
  def tap
    yield self if block_given?
    self
  end
end;

"foo".tap do |foo|
  foo << "bar"
  foo.upcase!
end

class Event
  def initialize(&block)
    @callback = block
  end
  def something_happened
    @callback.call(42)
  end
end;

event = Event.new do |data|
  puts("Received event with data: #{data}");
end

event.something_happened;

a_proc = Proc.new { puts("proc") }
a_proc.lambda?
a_proc.call

a_lambda = lambda { puts("lambda") }
a_lambda.lambda?

stabby_lambda = ->(arg) do
  puts("stabby lambda with arg #{arg}")
end
stabby_lambda.lambda?
stabby_lambda.call(:foo);
