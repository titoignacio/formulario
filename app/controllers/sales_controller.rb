class SalesController < ApplicationController
  def new
  end

  def create

  end

  private

  def sales_params
    params.require(:sales).permit(:cod, :detail, :category, :value, :discount, :tax)
end

end
