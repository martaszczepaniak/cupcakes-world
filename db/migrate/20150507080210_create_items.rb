class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :cupcake_id
      t.integer :basket_id

      t.timestamps null: false
    end
  end
end
