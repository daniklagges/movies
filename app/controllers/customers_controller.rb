# app/controllers/customers_controller.rb
class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def edit
    @customer = Customer.find(params[:id])
    @movies = Movie.available # Solo mostrar películas disponibles para arrendar
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customers_path, notice: 'Customer updated successfully'
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :rented_movie_id)
  end
end
