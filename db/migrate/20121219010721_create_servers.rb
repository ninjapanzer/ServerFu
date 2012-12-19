class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :location
      t.string :ip
      t.text :comments

      t.timestamps
    end
  end
end
