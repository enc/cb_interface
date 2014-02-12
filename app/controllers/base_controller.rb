class BaseController < ApplicationController
  def home
  end

  def search

    unless params[:term]
      redirect_to action: 'home'
      return
    end
    @cpage = 1
    comp = Cbapi::Search.new

    @cpage = params[:cpage].to_i if params.key? :cpage
    @rlist = comp.search params[:term], @cpage
    @csize = comp.size

    flash[:notice] = "No Results found." if @rlist.size == 0
    @complist = @rlist.select { |i| i['namespace'] == "company" }
    @prodlist = @rlist.select { |i| i['namespace'] == "product" }
    render action: 'home'
  end

  def product
    @product = Cbapi::Product.new
    @product.get(params[:product])
  end

  def company
    @company = Cbapi::Company.new
    @company.get(params[:company])
  end
end
