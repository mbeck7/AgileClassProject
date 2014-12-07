class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :title
      t.string :job_type
      t.string :job_location
      t.string :job_local_remote
	    t.string :job_status
      t.text :job_description
      t.integer :hours_per_week
      t.float :pay_min
      t.float :pay_max
      t.text :pay_comment
      t.text :applicant_experience
      t.text :how_to_apply

      t.timestamps
    end
  end
end
