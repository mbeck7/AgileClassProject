class AddJobKeywordIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_keyword_id, :integer
  end
end
