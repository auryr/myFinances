class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|

      t.text :note
      t.string :date ,:limit => 10
      t.decimal :amount,  scale: 2
      t.string :receipt  ,:limit => 20
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
