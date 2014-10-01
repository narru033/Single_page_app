class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :subject
      t.text :description
      t.time :starttime
      t.string :owner

      t.timestamps
    end
  end
end
