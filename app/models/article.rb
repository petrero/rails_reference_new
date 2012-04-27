class Article < ActiveRecord::Base
  belongs_to :author
  has_many :comments
  
  include Tire::Model::Search
  include Tire::Model::Callbacks
  
  def self.search(params)
    tire.search(load: true, page: params[:page], per_page: 2) do
      query { string params[:query], default_operator: "AND" } if params[:query].present?
      filter :range, published_at: {lte: Time.zone.now }
      sort {by :published_at, "desc" } if params[:query].blank?
    end
  end
end
