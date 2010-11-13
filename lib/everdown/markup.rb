require 'rdiscount'

module Everdown
  class Markup
    def initialize(markdown = "")
      @markdown = RDiscount.new(markdown)
    end

    def to_enml
      enml_wrapper(@markdown.to_html)
    end


    def to_html
      @markdown.to_html
    end

    def enml_wrapper(html)
<<-enml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE en-note SYSTEM "http://xml.evernote.com/pub/enml2.dtd">
<en-note>
#{html}
</en-note>
enml
    end
  end
end
