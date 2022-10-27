class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :user_id, null: false
      t.integer :category_id, null: false
      t.float :amount, null: false
      t.datetime :date

      t.timestamps
    end
  end
end
