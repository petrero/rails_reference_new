require 'spec_helper'

describe UserPresenter do
  
  it "says when none given" do
    #view.current_user {it will say it's undefined because is defined at controller level and view doesn't have access to it; must be stubbed out}
    presenter = UserPresenter.new(User.new, view)
    presenter.website.should include("None given")
  end
end
