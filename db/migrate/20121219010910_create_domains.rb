class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :name
      t.string :ip
      t.references :server
      t.text :comments

      t.timestamps
    end
    add_index :domains, :server_id
  end
end
