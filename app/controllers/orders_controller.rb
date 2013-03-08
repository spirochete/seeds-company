class OrdersController < ApplicationController

  before_filter :authenticate_customer!, :except => [:shop, :product]
  respond_to :html, :xml


  # Front page
  def shop
    if params[:search].present?
      @seeds = Seed.order(:common_name, :variety).basic_search(params[:search])
    elsif params[:cats].present?
      @seeds = Seed.order(:common_name, :variety).basic_search(categories: params[:cats])
    elsif params[:genus].present?
      if params[:species].present?
        @seeds = Seed.order(:common_name, :variety).basic_search(genus: params[:genus], species: params[:species])
      else
        @seeds = Seed.order(:common_name, :variety).basic_search(genus: params[:genus])
      end
    else
      @seeds = Seed.basic_search(featured: true)
    end

    respond_with @seeds
  end

  # Seed description
  def product
    @seed = Seed.find(params[:id])
    respond_with @seed
  end


  # GET /orders
  # GET /orders.json
  def index
    if params[:search].present?
      @orders = Order.order(:id).basic_search(params[:search])
    else
      @orders = Order.order(:id).all
    end

    respond_with @orders
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
    respond_with @order
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new
    respond_with @order
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])
    flash[:notice] = "Thank you for your order!" if @order.save
    respond_with @order
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])
    flash[:notice] = "Your order has been updated." if @order.update_attributes(params[:oder])
    respond_with edit_order_path
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    flash[:notice] = "Your order was removed." if @order.destroy
    respond_with root_path
  end

end
