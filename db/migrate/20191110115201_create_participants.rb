class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.string :name

      t.timestamps
    end
    add_index :participants, :name, unique: true
  end
end
