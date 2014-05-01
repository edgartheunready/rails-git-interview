require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", email: "user@example.com", repo_count: 3) }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:repo_count) }

  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end
  
  describe "when repo_count is not present" do
    before { @user.repo_count = nil }
    it { should_not be_valid }
  end
end