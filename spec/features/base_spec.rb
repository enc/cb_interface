require 'spec_helper'

describe BaseController do

  describe 'home' do
    it "shows search form" do
      visit "/"
      fill_in('Search Term', with: 'facebook')
      click_on('Search')

      expect(page).to have_content "Companies"
      expect(page).to have_content "Products"
    end
  end


end
