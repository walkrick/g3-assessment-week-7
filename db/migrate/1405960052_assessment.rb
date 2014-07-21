class Assessment < ActiveRecord::Migration
  def up
    # add migration code here
    create_table :messages do |t|
      t.string :username
      t.string :message


    end

  def down
    # add reverse migration code here
    drop_table :messages

  end
end
