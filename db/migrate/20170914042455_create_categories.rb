class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|

      t.string :name
      t.string :description
      t.string :operation
      t.boolean :included
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
