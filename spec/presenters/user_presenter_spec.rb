require 'spec_helper'

describe UserPresenter do
  include ActionView::TestCase::Behavior
  
  it "says when none given" do
    presenter = UserPresenter.new(User.new, view)
    presenter.website.should include("None given")
  end
end
