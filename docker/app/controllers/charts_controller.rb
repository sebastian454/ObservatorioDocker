class ChartsController < ApplicationController

   def company_all
     render json: Company.group_by_year(:founded_date).count
   end

   #def patents_chart
    # render json: Patent.group_by_year(:fecha).count
   #end
   #def markets_chart
  #   render json: Market.group(:title).sum(:projected_sales)
  # end

   #def markets_sales
  #   render json: Market.group(:title).sum(:score)
  # end




end
