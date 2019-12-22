class CreateUserBuilds < ActiveRecord::Migration
  def change
    create_table :user_builds do |t|
      t.integer :user_id
      t.integer :build_id

      t.timestamps null: false
    end
  end
end
