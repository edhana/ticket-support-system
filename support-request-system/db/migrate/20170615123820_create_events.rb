class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :support_request, foreign_key: true
      t.references :support_request_status, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
