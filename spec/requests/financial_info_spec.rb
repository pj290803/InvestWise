require 'rails_helper'

RSpec.describe "FinancialInfos", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/financial_info/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/financial_info/create"
      expect(response).to have_http_status(:success)
    end
  end

end
