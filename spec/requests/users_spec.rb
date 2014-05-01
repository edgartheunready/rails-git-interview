require 'spec_helper'

describe "Users" do
  subject { page }
    describe "show page" do
      before { visit show_path }
      it { should have_content('show')}
      it { should have_content('name')}
      it { should have_content('email')}
      it { should have_content('number of repos')}
    end

    describe "GET /users/search" do
      before { visit root_path }
      it { should have_content('search')}
    end
end
