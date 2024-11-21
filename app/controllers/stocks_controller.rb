class StocksController < ApplicationController
    def show
      @stock_data = YahooFinanceService.fetch_stock_data(params[:symbol])
      render json: @stock_data # Renders the data as JSON
    end
  end
  