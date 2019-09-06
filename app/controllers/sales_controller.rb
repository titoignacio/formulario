class SalesController < ApplicationController
  def new
  end

  def create
    sale = Sale.new(sales_params)
     sale.total = sale.value.to_f * (1-(sale.discount.to_f/100))
        if sale.tax == 0
       sale.total = sale.total * 1.19
       sale.tax = 19
        else
       sale.tax = 0

        end
      byebug
      end







  private

  def sales_params
    params.require(:sales).permit(:cod, :detail, :category, :value, :discount, :tax)
  end

end
