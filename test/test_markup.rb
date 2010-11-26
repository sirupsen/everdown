require "helper"

context Everdown::Markup do
  setup { Everdown::Markup.new }

  context "with some Markdown" do
    context "ENML parser" do
      setup { Everdown::Markup.new(fixture("markdown.md")) }

      asserts(:to_enml).equals(fixture("enml.xml"))
    end
  end

  # asserts [:enml_wrapper, "Hello World"] do 
  #   Everdown::Markup.new.enml_wrapper("Hello World")
  # end.equals(fixture("enml_wrapper.xml"))
end
