class Product < ActiveRecord::Base
  def for_mustache
    context = V8::Context.new
    coffee = File.read(Rails.root.join("app/assets/javascripts/product.js.coffee"))
    javascript = CoffeeScript.compile(coffee)
    context.eval(javascript)
    context.eval("new Product(#{to_json})")
  end
end
