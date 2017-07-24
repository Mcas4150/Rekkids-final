class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def aboutus

  end

  def home
    @records = Record.all
  end
end
