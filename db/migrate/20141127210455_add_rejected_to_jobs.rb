class AddRejectedToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :rejected, :boolean, default: false
  end
end
