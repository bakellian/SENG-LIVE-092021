#migration: file responsible for defining how the table is going to look
# rake db:create_migration NAME=create_donations

class CreateDonations < ActiveRecord::Migration[6.1] 
  def change
    create_table :donations do |t| #create_table method provided by active record. :dontations is argument of table name. T is convention block parameter - stands for type
       t.float :amount 
       t.datetime :date
       t.boolean :completed, :default => false 
      #  t.integer :organization_id #foreign key column
      #  t.integer :donor_id  #foreign key column
       #optimized foreign key columns: 
       t.belongs_to :organization
       t.belongs_to :donor
       #dont need to specify id column for doantion b/c active record will create it for us
    end
  end
end

# run rake db:migrate once done 
