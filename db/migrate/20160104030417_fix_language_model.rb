class FixLanguageModel < ActiveRecord::Migration
  def change
    remove_foreign_key :languages, :projects
    remove_index :languages, [:project_id]
    remove_column :languages, :project_id, :integer
    remove_column :languages, :title, :string
    add_column :languages, :name, :string
  end
end
