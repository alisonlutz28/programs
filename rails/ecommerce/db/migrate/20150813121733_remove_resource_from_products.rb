class RemoveResourceFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :resource, :string
  end
end
