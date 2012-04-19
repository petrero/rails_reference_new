class BasePresenter
  def initialize(object, template)
    @object = object
    @template = template
  end
  
  def self.presents(name)
    define_method(name) do
      @object
    end
  end
  
  def h
    @template
  end
  
  def markdown(text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :hard_wrap => true, :filter_html => true, :autolink => true)
    markdown.render(text).html_safe
  end
end
