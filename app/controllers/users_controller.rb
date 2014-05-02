require 'open-uri'
require 'json'
class UsersController < ApplicationController
  def show
  	@user = User.where(:name => params[:id]).first || 
  			retrieve_user_from_github(params[:id])
  end

  def search
  end

  private

  def retrieve_user_from_github(username)
    response = open("https://api.github.com/users/#{username}").read
    user = JSON.parse(response)
    name = user['login']
    email = user['email']
    repo_count = user['public_repos']
    User.create(name: name, email: email, repo_count: repo_count)
  end
end
