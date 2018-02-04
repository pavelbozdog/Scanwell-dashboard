class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.references :participant, foreign_key: true
      t.integer :microalbumin
      t.integer :protein

      t.timestamps
    end
  end
end
