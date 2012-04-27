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
  
  def error_messages
    if object.errors.full_messages.any?
      @template.content_tag(:div, :class=> "error_messages") do
        @template.content_tag(:h2, "Invalid Fields") +
        @template.content_tag(:ul) do      
          object.errors.full_messages.map do |msg|
            @template.content_tag(:li, msg)
          end.join.html_safe
        end
      end
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
