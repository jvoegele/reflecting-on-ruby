module DocStrings
  def doc(doc_string)
    install_hooks!
    self.pending_docstring = doc_string
  end

  def doc_string(method_name)
    doc_strings[method_name]
  end

  private
  attr_accessor :pending_docstring

  def install_hooks!
    unless @hooks_installed
      self.class_eval do
        # self = Document
        def self.method_added(method_name)
          apply_pending!(method_name)
          super
        end
      end
      @hooks_installed = true
    end
  end

  def apply_pending!(method_name)
    if pending_docstring
      doc_strings[method_name] = pending_docstring
      self.pending_docstring = nil
    end
  end

  def doc_strings
    @doc_strings ||= {}
  end
end

class Object
  include DocStrings
end

