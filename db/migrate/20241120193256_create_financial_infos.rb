class CreateFinancialInfos < ActiveRecord::Migration[7.2]
  def change
    create_table :financial_infos do |t|
      t.string :salary_range
      t.integer :age
      t.decimal :monthly_expenses
      t.decimal :savings

      t.timestamps
    end
  end
end
