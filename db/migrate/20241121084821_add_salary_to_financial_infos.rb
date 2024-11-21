class AddSalaryToFinancialInfos < ActiveRecord::Migration[7.2]
  def change
    add_column :financial_infos, :salary, :decimal
  end
end
