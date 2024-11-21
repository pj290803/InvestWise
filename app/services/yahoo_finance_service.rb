require 'net/http'
require 'json'

class YahooFinanceService
  BASE_URL = 'https://query1.finance.yahoo.com/v7/finance/quote'

  def self.fetch_stock_data(symbols)
    return [] if symbols.empty?

    uri = URI("#{BASE_URL}?symbols=#{symbols.join(',')}")
    response = Net::HTTP.get(uri)
    data = JSON.parse(response)

    if data['quoteResponse'] && data['quoteResponse']['result']
      data['quoteResponse']['result']
    else
      []
    end
  rescue StandardError => e
    Rails.logger.error "Error fetching stock data: #{e.message}"
    []
  end
end
