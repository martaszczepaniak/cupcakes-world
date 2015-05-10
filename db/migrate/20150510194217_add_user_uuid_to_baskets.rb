class AddUserUuidToBaskets < ActiveRecord::Migration
  def change
    add_column :baskets, :user_uuid, :string
  end
end
