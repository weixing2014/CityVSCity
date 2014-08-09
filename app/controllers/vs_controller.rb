class VsController < ApplicationController
  def results

  end

  def home
    @cities = City.all
  end

  def basics

  end

end
