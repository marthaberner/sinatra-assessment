require 'spec_helper'
require 'capybara/rspec'
require_relative ("../app")

Capybara.app = App

feature "Task Master" do
  scenario "Manage Tasks" do
    visit '/'

    within ("#tasks") do
      expect(page).to have_content "Welcome"
    end
  end
end