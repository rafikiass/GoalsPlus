class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :team_a, :default => 1 # unknown
      t.references :team_b, :default => 1 # unknown
      t.references :stadium, :default => 1 # unknown
      t.references :tournament, :default => 31 # friendly
      t.references :stage, :default => 1 # unknown
      t.datetime :date
      t.references :timezone, :null => false, :default => 146 # New Zealand
      t.boolean :pens, :null => false, :default => false # none
      t.integer :goals_a
      t.integer :goals_b
      t.integer :pens_a
      t.integer :pens_b
      t.float :coof_a, :default => 1
      t.float :coof_x, :default => 1
      t.float :coof_b, :default => 1

      t.timestamps
    end
    add_index :matches, :team_a_id
    add_index :matches, :team_b_id
    add_index :matches, :stadium_id
    add_index :matches, :tournament_id
    add_index :matches, :stage_id
    add_index :matches, :timezone_id
  end
end
