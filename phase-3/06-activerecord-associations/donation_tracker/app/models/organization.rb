class Organization < ActiveRecord::Base
    has_many :donations #.donations => rtrns organizations donations | .donations << 

    has_many :donors, through: :donations #.donors | .donors << 
end