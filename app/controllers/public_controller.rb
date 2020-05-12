class PublicController < ApplicationController

  def homepage
    @account = Account.find_by_username(params[:username])
  end
end
