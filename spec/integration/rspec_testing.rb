require 'rails_helper.rb'

feature"Shopper adds an item" do
    scenario 'Shopper successfully navigates to the add items page from the homepage' do
        visit items_path
        expect(page).to have_content("List of Items")
        click_link "Add Item"
        expect(page).to have_content("Add Item")
        expect(page).to have_field("Title")
        expect(page).to have_field("Image URL")
        expect(page).to have_field("Total Price")
        expect(page).to have_field("Quantity available")
        expect(page).to have_field("Link to site")
    end
    
    scenario "Shopper successfully adds a new item" do
        visit new_item_path
        expect(page).to have_content("Add Item")
        fill_in "Title", with: "New Capybara Item"
        fill_in "Image URL", with: "www.ImageURL.com"
        fill_in "Total Price", with: "10.99"
        fill_in "Quantity available", with: "3"
        fill_in "Link to site", with: "www.LinkToSite.com"
        click_button "Create Item"
        expect(page).to have_content("New Capybara Item")
        expect(page).to have_content("www.ImageURL.com")
        expect(page).to have_content("10.99")
        expect(page).to have_content("3")
        expect(page).to have_content("www.LinkToSite.com")
    end
end

feature "Shopper Splits an item" do
    
    scenario "Shopper splits a product by committing to buy it" do
       visit new_item_path
        expect(page).to have_content("Add Item")
        fill_in "Title", with: "New Capybara Item"
        fill_in "Image URL", with: "www.ImageURL.com"
        fill_in "Total Price", with: "10.99"
        fill_in "Quantity available", with: "3"
        fill_in "Link to site", with: "www.LinkToSite.com"
        click_button "Create Item"
        visit items_path
        expect(page).to have_content("New Capybara Item")
        expect(page).to have_content("Name")
        expect(page).to have_content("Quantity")
        fill_in "Name", with: "Kamil"
        fill_in "Quantity", with: "3"
        click_button "Split"
        expect(page).to have_content("Pending Splits")
        expect(page).to have_content("Kamil 3")
    end
end

feature "Admin edits inappropriate content" do
    
    scenario "Admin edits a product's image after a copyright infringement claim" do
       visit new_item_path
        expect(page).to have_content("Add Item")
        fill_in "Title", with: "New Capybara Item"
        fill_in "Image URL", with: "www.NFSW-Image.com"
        fill_in "Total Price", with: "10.99"
        fill_in "Quantity available", with: "3"
        fill_in "Link to site", with: "www.LinkToSite.com"
        click_button "Create Item"
        visit items_path
        click_link 'Edit'
        fill_in "Image URL", with: "www.NFSW-Image-Replaced.com"
        click_button 'Update Item'
        expect(page).to have_content("New Capybara Item")
        expect(page).to have_content("www.NFSW-Image-Replaced.com")
        expect(page).to have_content("10.99")
        expect(page).to have_content("3")
        expect(page).to have_content("www.LinkToSite.com")
    end
    
end