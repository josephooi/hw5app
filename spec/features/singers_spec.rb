require 'spec_helper'
describe 'Adding a singer' do
  it 'requires a name', js: true do
    visit singers_path
    click_link "New Singer"
    fill_in "Name", with: "Matt Rader"
    click_button "Create Singer"
    page.should have_content "successful"
  end
end