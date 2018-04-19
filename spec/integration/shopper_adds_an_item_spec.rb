require 'rails_helper.rb'

feature"Shopper adds an article" do
    scenario 'Shopper successfully navigates to the add items page from the homepage' do
        visit items_path
        expect(page).to have_content("List of Items")
        click_link "Add Item"
        expect(page).to have_content("Add Item")
        expect(page).to have_field("Title")
        expect(page).to have_field("Description")
    end
    
    scenario "Shopper successfully adds a new item" do
        visit new_item_path
        expect(page).to have_content("Add Item")
        fill_in "Title", with: "New Capybara Item"
        fill_in "Description", with: "This is a new Capybara Item meant for testing purposes"
        click_button "Create Item"
        expect(page).to have_content("New Capybara Item")
        expect(page).to have_content("This is a new Capybara Item meant for testing purposes")
    end
end