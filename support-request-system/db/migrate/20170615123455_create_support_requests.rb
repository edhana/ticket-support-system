class CreateSupportRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :support_requests do |t|
      t.references :customer, foreign_key: { to_table: :users }
      t.references :agent, foreign_key: { to_table: :users }
      t.string :description

      t.timestamps
    end
  end
end
