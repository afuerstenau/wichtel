class CreateChristmasevenings < ActiveRecord::Migration[6.0]
  def change
    create_table :christmasevenings do |t|
      t.references :year
      t.references :giver
      t.references :receiver
      t.timestamps
    end
  end
end
