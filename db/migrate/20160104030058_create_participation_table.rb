class CreateParticipationTable < ActiveRecord::Migration
  def change
    create_table :participation do |t|
      t.integer :language_id
      t.integer :project_id
      t.timestamps null: false
    end
  end
end
