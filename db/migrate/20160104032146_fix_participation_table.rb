class FixParticipationTable < ActiveRecord::Migration
  def change
    add_foreign_key :participation, :projects
    add_foreign_key :participation, :languages
    add_index :participation, [:project_id], name: "index_participation_on_project_id"
    add_index :participation, [:language_id], name: "index_participation_on_language_id"
    
  end
end
