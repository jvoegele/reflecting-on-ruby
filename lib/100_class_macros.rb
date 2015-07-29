module Attributes
  def attributes(*attrs)
    attrs.each do |attr|
      define_method(attr) do
        instance_variable_get("@#{attr}")
      end
      define_method("#{attr}=") do |value|
        instance_variable_set("@#{attr}", value)
      end
    end
  end
end;

class Person
  extend Attributes
  attributes :name, :email
end;
Person.instance_methods(false)

class HttpClient
  def request(request_method, path)
    # Let's pretend this actually does something
  end

  [:get, :put, :post, :delete].each do |request_method|
    define_method(request_method) do |method, path|
      request(method, path)
    end
  end
end
