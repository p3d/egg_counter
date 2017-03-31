class CreateEggs < ActiveRecord::Migration
  def change
    create_table :eggs do |t|
      t.references :user, index: true
      t.integer :uses

      t.timestamps
    end
  end
end
