class CreateBanks < ActiveRecord::Migration
  def up
    create_table :banks do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :banks
  end
end
