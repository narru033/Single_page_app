class ChangeTimeToTasks < ActiveRecord::Migration
  def change
  	change_column :tasks, :starttime, :datetime
  end
end
