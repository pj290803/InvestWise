require 'net/http'
require 'json'

class FinancialInfoController < ApplicationController
  def new
    @financial_info = FinancialInfo.new
  end

  def create
    @financial_info = FinancialInfo.new(financial_info_params)

    if @financial_info.save
      @emergency_fund = @financial_info.calculate_emergency_fund
      @stocks = fetch_stock_data
      @fds = fetch_fd_data
      render 'summary'
    else
      render :new
    end
  end

  private

  def financial_info_params
    params.require(:financial_info).permit(:age, :salary, :monthly_expenses, :savings, :goal)
  end

  def fetch_stock_data
    # Example with Yahoo Finance API
    uri = URI('https://query1.finance.yahoo.com/v7/finance/quote?symbols=RELIANCE.NS,TCS.NS')
    response = Net::HTTP.get(uri)
    JSON.parse(response)['quoteResponse']['result']
  end

  def fetch_fd_data
    # Placeholder for FD rates API
    [
      { bank: 'SBI', rate: '6.8%', tenure: '5 years' },
      { bank: 'HDFC', rate: '7.1%', tenure: '5 years' }
    ]
  end
end
