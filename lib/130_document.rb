load '135_doc_strings.rb'

class Document
  doc "Save the document."
  def save; end
end;

Document.doc_string(:save)
