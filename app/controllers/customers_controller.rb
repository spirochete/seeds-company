class CustomersController < ApplicationController

  before_filter :authenticate_admin!, :except => [:cart, :add_item]
  layout 'admin_layout', :except => [:cart, :add_item]

  def add_item
    @customer = Customer.find(params[:customer])
    @order = Order.basic_search(:customer_id => @customer.id).first
    if @order.nil?
      @order = @customer.orders.build
      @order.save
    end

    @packet = Packet.find(params[:packet])

    @oi = @order.order_items.build(:packet_id => @packet.id, :cost => @packet.price, :quantity => 1)
    @oi.save

    redirect_to cart_path(:customer => @customer)

  end

  def cart
    @customer = Customer.find(params[:customer])
    @order = Order.basic_search(:customer_id => @customer.id).first
    if @order.nil?
      @order = @customer.orders.build
      @order.save
    end

    respond_to do |format|
      format.html
      format.json { render json: @order }
    end
  end

  # GET /customers
  # GET /customers.json
  def index
    if params[:search].present?
      @customers = Customer.order('id DESC').basic_search(params[:search]).page(params[:page])
    else
      @customers = Customer.order('id DESC').page(params[:page])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customers }
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
    @customer = Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: customers_path }
    end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(params[:customer])

    respond_to do |format|
      if @customer.save
        format.html { redirect_to customers_path, notice: 'Customer was successfully created.' }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { render action: "new" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])

    if params[:customer][:password].blank?
      params[:customer].delete(:password)
      params[:customer].delete(:password_confirmation)
    end

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to customers_path, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end
  

end
