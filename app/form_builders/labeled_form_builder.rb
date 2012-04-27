class LabeledFormBuilder < ActionView::Helpers::FormBuilder
  
  %w[text_field text_area password_field collection_select].each do |method_name|
    define_method(method_name) do |name, *args|
      @template.content_tag :div, class: "field" do
        label(name) + @template.tag(:br) + super(name, *args)  
      end   
    end
  end
  
  def check_box(name, *args)
    @template.content_tag :div, class: "field" do
      super + " " + label(name)
    end
  end
end
