class CreateAccounts < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.belongs_to :bank
      t.string :name
      t.float :balance
      t.timestamps
    end
  end

  def down
    drop_table :accounts
  end
end
