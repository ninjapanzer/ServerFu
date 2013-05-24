class CreateServerLogs < ActiveRecord::Migration
  def change
    create_table :server_logs do |t|
      t.string :title
      t.string :body
      t.references :server

      t.timestamps
    end
    add_index :server_logs, :server_id
  end
end
