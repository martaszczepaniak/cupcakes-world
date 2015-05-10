class CreateCupcakesFlavours < ActiveRecord::Migration
  def change
    create_table :cupcakes_flavours do |t|
      t.integer :cupcake_id
      t.integer :flavour_id

      t.timestamps null: false
    end
  end
end
