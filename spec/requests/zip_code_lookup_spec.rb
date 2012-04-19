require "spec_helper"

describe "ZipCodeLookup" do
  it "show Beverly Hills given 90210" do
    visit root_path
    fill_in "zip_code", with: "90210"
    click_on "Lookup"
    page.should have_content("Beverly Hills")
  end
end
