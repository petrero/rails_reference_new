class Article < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  
  include Tire::Model::Search
  include Tire::Model::Callbacks
end
