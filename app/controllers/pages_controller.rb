class PagesController < ApplicationController


  def aboutus

  end

  def home
    @records = Record.all
  end

  def gear

  end

end
