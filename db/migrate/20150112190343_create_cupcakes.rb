class CreateCupcakes < ActiveRecord::Migration
  def change
    create_table :cupcakes do |t|
      t.string :name
      t.decimal :price

      t.timestamps null: false
    end
  end
end
