require './test_helper'

context Everdown::Markup do
  setup { Everdown::Markup.new }

  context "with some Markdown" do
    context "ENML parser" do
      setup do 
        Everdown::Markup.new(fixture("markdown.md"))
      end

      should "convert into ENML" do
        topic.to_enml == fixture("enml.xml")
      end
    end
  end

  # TODO: convert this to a macro
  asserts("#enml_wrapper with argument 'Hello World'") do 
    Everdown::Markup.new.enml_wrapper("Hello World")
  end.equals(fixture("enml_wrapper.xml"))
end
