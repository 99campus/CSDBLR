class AddColumnInputDataToCalculator < ActiveRecord::Migration
  def change
    add_column :calculators, :input_data, :string
  end
end
