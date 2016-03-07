class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:contact]
  def index
  end

  def contact
  end
end
