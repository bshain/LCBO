require 'open-uri'

class ProductsController < ApplicationController
  def index
    bloop = params[:bleep] || 1
    products_json = open("http://lcboapi.com/products?per_page=30&page=" + "#{bloop}").read
    @products = JSON.parse(products_json)
  end

  def show
    product_id = params[:id]
    products_json = open("http://lcboapi.com/products/#{product_id}").read
    @product = JSON.parse(products_json)
  end


end
