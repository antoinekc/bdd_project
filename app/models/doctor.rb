class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :specialties, through: :JoinTableSpecialtyDoctor
  belongs_to :city, optional:true
  
end
