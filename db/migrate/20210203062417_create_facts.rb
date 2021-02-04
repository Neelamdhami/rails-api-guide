class CreateFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :facts do |t|
      t.integer :post_id
      t.string :fact
      t.integer :likes

      t.timestamps
    end
  end
end
