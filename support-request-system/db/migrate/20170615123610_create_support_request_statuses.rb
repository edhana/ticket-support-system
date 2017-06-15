class CreateSupportRequestStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :support_request_statuses do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
