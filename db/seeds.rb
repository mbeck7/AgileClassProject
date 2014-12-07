Admin.create!(email: 'homer@admin.com', password: 'admin1234', password_confirmation: 'admin1234')

rep_one = CompanyRep.create!(email: 'jeffery@AwesomeCo.com', password: 'jeffery1234', password_confirmation: 'jeffery1234')
rep_two = CompanyRep.create!(email: 'walter@OfficeMax.com', password: 'walter1234', password_confirmation: 'walter1234')
rep_three = CompanyRep.create!(email: 'donny@FarrellEquipment.com', password: 'donny1234', password_confirmation: 'donny1234')
rep_four = CompanyRep.create!(email: 'maude@LaborReady.com', password: 'maude1234', password_confirmation: 'maude1234')

company_one = Company.create!(company_rep_id: rep_one.id, name: "AwesomeCo", address: "111 1st st", city: "Eau Claire", state: "WI", zip_code: "54703", rejected: false, approved: false)
company_two = Company.create!(company_rep_id: rep_two.id, name: "Office Max", address: "222 2nd st", city: "Eau Claire", state: "WI", zip_code: "54703", rejected: false, approved: true)
company_three = Company.create!(company_rep_id: rep_three.id, name: "Farrell Equipment", address: "333 3rd st", city: "Eau Claire", state: "WI", zip_code: "54703", rejected: false, approved: true)
company_four = Company.create!(company_rep_id: rep_four.id, name: "Labor Ready", address: "444 4th st", city: "Eau Claire", state: "WI", zip_code: "54703", rejected: false, approved: true)

Job.create!(company_id: company_one.id, title: "Web Developer", job_type: "Entry Level - Salary", job_status: "Full-Time", job_description: "Build cool things for cool people with cool tools.", hours_per_week: 45, pay_min: 60000, pay_max: 100000, pay_comment: "Do your work. You'll get paid", applicant_experience: "You should have an active GitHub account.", how_to_apply: "Send resume to awesome_hr@awesomeco.com", job_location: "1234 Five St, Sunny, CA", job_local_remote: "remote" approved: false)
Job.create!(company_id: company_two.id, title: "Sales", job_type: "Entry Level - Salary", job_status: "Intership", job_description: "Selling Electronics and dealing with Customers", hours_per_week: 40, pay_min: 30.0, pay_max: nil, pay_comment: "Will discuss", applicant_experience: "none", how_to_apply: "In person", job_location: "111 First St", job_local_remote: "local" approved:true)
Job.create!(company_id: company_three.id, title: "Software Developer", job_type: "Entry Level - Salary", job_status: "Full-Time", job_description: "Developing Websites", hours_per_week: 40, pay_min: 50.0, pay_max: nil, pay_comment: "Will discuss", applicant_experience: "Associates degree", how_to_apply: "In person", job_location: "222 Second St", job_local_remote: "local/remote" approved:true)
Job.create!(company_id: company_four.id, title: "Laborer", job_type: "Entry Level - Salary", job_status: "Temporary", job_description: "Hard work and get paid less", hours_per_week: 60, pay_min: 15.0, pay_max: nil, pay_comment: "minimal wage", applicant_experience: "none", how_to_apply: "In person", job_location: "333 Third St", approved:true)
