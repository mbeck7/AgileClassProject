class AddCompanyIdToJobs < ActiveRecord::Migration
  def up
    remove_column :jobs, :company_name, :string
    add_column :jobs, :company_id, :integer
  end

  def down
    add_column :jobs, :company_name, :string
    remove_column :jobs, :company_id, :integer
  end
end
