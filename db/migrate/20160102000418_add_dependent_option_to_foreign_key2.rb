class AddDependentOptionToForeignKey2 < ActiveRecord::Migration
  def change
    remove_foreign_key :projects, :developers
    add_foreign_key :projects, :developers, on_delete: :cascade
  end
end
