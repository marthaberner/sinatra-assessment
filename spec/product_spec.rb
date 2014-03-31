require 'spec_helper'
require 'capybara/rspec'
require_relative ("../app")

Capybara.app = App

feature "Task Master" do
  scenario "Manage Tasks" do
    visit '/'

    within ("#products") do
      expect(page).to have_content "Welcome"
      click_link "Add a Product"
    end
    within ("#new_products") do
      fill_in "product", with: "Awesome App"
      click_on "Create Product"
    end
    within ("#products") do
      expect(page).to have_content "Awesome App"
    end
  end
end