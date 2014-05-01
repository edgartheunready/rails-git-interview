require 'spec_helper'

describe "Users" do
  describe "GET /users/show" do
    it "works! (now write some real specs)" do
      visit "/users/show"
      expect(page).to have_content("show")
    end
  end

  describe "GET /users/search" do
    it "works! (now write some real specs)" do
      visit "/users/search"
      expect(page).to have_content("search")
    end
  end
end
