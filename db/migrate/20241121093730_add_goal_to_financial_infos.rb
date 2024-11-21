class AddGoalToFinancialInfos < ActiveRecord::Migration[7.2]
  def change
    add_column :financial_infos, :goal, :string
  end
end
