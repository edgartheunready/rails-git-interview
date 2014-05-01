require 'spec_helper'

describe "Users" do
  describe "GET /users/show" do
    it "works! (now write some real specs)" do
      visit "/users/show"
      expect(page).to have_content("show")
    end
  end
end
