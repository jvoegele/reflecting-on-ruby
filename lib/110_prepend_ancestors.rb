module ModuleOverrides
  def ancestors
    m = method(__method__)
    puts("method: #{m.name}, owner: #{m.owner}");
    puts("source_location: #{m.source_location}");
    puts("super_method: #{m.super_method}");
    p caller
    super.reject {|a| a == PP::ObjectMixin}
  end;
end;
class Module
  prepend ModuleOverrides
end;

String.ancestors
