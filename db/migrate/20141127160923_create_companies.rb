class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :city
      t.string :zip_code
      t.integer :company_rep_id
      t.boolean :approved, default: false
      t.boolean :rejected, default: false

      t.timestamps
    end
  end
end
