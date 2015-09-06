class RemoveResourceFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :resource, :string
  end
end
