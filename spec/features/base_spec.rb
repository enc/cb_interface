require 'spec_helper'

describe BaseController do

  describe 'home' do
    it "shows search form" do
      visit "/"
      fill_in('Search Term', with: 'facebook')
      click_on('Search')

      expect(page).to have_content "Companies"
      expect(page).to have_content "Products"
      expect(page).to have_content "Facebook"
      expect(page).to have_content "Next"
    end

    it 'has no results' do
      visit "/"
      click_on('Search')

      expect(page).to have_content "No Results"
    end
    it 'can find Zuckerberg' do
      visit "/"
      fill_in('Search Term', with: 'facebook')
      click_on('Search')
      click_on 'Facebook'
      expect(page).to have_content "People"
      expect(page).to have_content "Phillips Exeter Academy"
      expect(page).to have_content "Zuckerberg"

    end
    it 'has pagination' do
      visit "/"
      fill_in('Search Term', with: 'facebook')
      click_on('Search')
      click_on 'Next'
      expect(page).to have_content "Facebook Creative Labs"

    end
  end


end
