class AddYearColumnToChristmasevening < ActiveRecord::Migration[6.0]
  def change
    add_column :christmasevenings, :year, :integer
  end
end
