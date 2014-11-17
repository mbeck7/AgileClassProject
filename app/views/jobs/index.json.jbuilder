json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :hours_per_week, :is_internship, :is_entry_level, :experience, :description, :full_time, :part_time, :how_to_apply, :pay_min, :pay_max, :pay_exact, :pay_comment, :company_name
  json.url job_url(job, format: :json)
end
