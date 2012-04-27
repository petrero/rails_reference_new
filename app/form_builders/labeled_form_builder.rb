class LabeledFormBuilder < ActionView::Helpers::FormBuilder
  def text_field(name, *args)
    @template.content_tag :div, class: "field" do
      label(name) + @template.tag(:br) + super  
    end 
  end  
end
