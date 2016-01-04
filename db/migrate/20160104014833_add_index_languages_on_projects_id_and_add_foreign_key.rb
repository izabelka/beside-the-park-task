class AddIndexLanguagesOnProjectsIdAndAddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :languages, :projects
    add_index :languages, [:project_id], name: "index_languages_on_project_id"
    
  end
end
