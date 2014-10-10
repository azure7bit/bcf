class CreateBarista < ActiveRecord::Migration
  def change
    create_table :barista do |t|
      t.string :name
      t.string :gender
      t.date :age
      t.string :company
      t.string :job_title
      t.text :company_address
      t.string :city
      t.string :postal_code
      t.string :country
      t.string :telp
      t.string :fax
      t.string :mobile
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
