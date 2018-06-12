class CreateApiCalls < ActiveRecord::Migration[5.2]
  def change
    create_table :api_calls do |t|
      t.string :endpoint, index: true
      t.string :controller
      t.string :action
      t.string :method
      t.string :format
      t.integer :status
      t.float :duration
      t.float :db_runtime
      t.float :view_runtime
      t.datetime :created_at, null: false
    end
  end
end
