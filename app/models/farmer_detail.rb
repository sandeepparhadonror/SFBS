class FarmerDetail < ApplicationRecord


validates  :first_name, :middle_name, :last_name, :phone_number, :transportation_vehicle, :email, :address, presence: true


def farmar_full_name
  self.first_name + " " + self.middle_name + " " + self.last_name
end	

end
