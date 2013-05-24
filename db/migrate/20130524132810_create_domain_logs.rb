class CreateDomainLogs < ActiveRecord::Migration
  def change
    create_table :domain_logs do |t|
      t.string :title
      t.string :body
      t.references :domain

      t.timestamps
    end
    add_index :domain_logs, :domain_id
  end
end
