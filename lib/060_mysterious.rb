class C
  def m1
    def mysterious; end
  end
end
class D < C; end

C.instance_methods(false)

D.new.m1

C.instance_methods(false)
