class JoinTableSpecialtyDoctor < ApplicationRecord
  has_many :specialty
  has_many :doctors
end
