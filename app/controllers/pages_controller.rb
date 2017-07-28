class PagesController < ApplicationController


  def aboutus

  end

  def home
    @records = Record.all
  end
end
