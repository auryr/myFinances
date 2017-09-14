class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|

      t.string :name
      t.string :description
      t.string :initdate ,:limit => 10
      t.string :enddate  ,:limit => 10
      t.decimal :amount,  scale: 2
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
