class CreateDonughts < ActiveRecord::Migration
  def change
    create_table :donughts do |t|

      t.timestamps null: false
    end
  end
end
