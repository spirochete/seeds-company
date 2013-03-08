class OrdersController < ApplicationController

  before_filter :authenticate_customer!, :except => [:shop, :product]


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

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seeds }
    end
  end

  # Seed description
  def product
    @seed = Seed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seed }
    end
  end


  # GET /orders
  # GET /orders.json
  def index
    if params[:search].present?
      @orders = Order.order(:id).basic_search(params[:search])
    else
      @orders = Order.order(:id).all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to edit_order_path, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

end
