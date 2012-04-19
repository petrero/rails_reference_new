ActiveAdmin.register Product do
  scope :unreleased
  
  index do
    column :name
    column :category
    column "Released Date", :released_at
    column :price, :sortable => :price do |product|
      div class: "price" do #align price to right
        number_to_currency product.price
      end
    end
    default_actions
  end
end
