class LabeledFormBuilder < ActionView::Helpers::FormBuilder
  
  %w[text_field text_area password_field collection_select].each do |method_name|
    define_method(method_name) do |name, *args|
      @template.content_tag :div, class: "field" do
        field_label(name, *args) + @template.tag(:br) + super(name, *args)  
      end   
    end
  end
  
  def check_box(name, *args)
    @template.content_tag :div, class: "field" do
      super + " " + field_label(name, *args)
    end
  end
  
  private
    def field_label(name, *args)
      options = args.extract_options!
      required = object.class.validators_on(name).any? {|v| v.kind_of? ActiveModel::Validations::PresenceValidator }
      label(name, options[:label], class: ("required" if required))
    end
    
    def objectify_options(options)
      super.except(:label)
    end
end
