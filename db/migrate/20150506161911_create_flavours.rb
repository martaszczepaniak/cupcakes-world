class CreateFlavours < ActiveRecord::Migration
  def change
    create_table :flavours do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
