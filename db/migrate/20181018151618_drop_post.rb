class DropPost < ActiveRecord::Migration[5.2]
  def change
    drop_table(:posts, force: true) if ActiveRecord::Base.connection.tables.include?('posts')
  end
end
