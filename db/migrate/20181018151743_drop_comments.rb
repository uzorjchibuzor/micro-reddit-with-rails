class DropComments < ActiveRecord::Migration[5.2]
  def change
    drop_table(:comments, force: true) if ActiveRecord::Base.connection.tables.include?('comments')
  end
end
