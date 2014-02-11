class BaseController < ApplicationController
  def home
  end

  def search

    comp = Cbapi::Company.new
    prod = Cbapi::Product.new
    @complist = comp.search params[:term]
    @prodlist = prod.search params[:term]
    render action: 'home'
  end

  def product
  end

  def company
  end
end
