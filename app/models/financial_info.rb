class FinancialInfo < ApplicationRecord
    validates :age, :salary, :monthly_expenses, :savings, :goal, presence: true
    validates :salary, :monthly_expenses, :savings, :goal, numericality: { greater_than_or_equal_to: 0 }
  
    def calculate_emergency_fund
      (salary * 0.1).round(2)
    end
  end
  