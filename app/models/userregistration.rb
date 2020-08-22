class Userregistration < ApplicationRecord
    validates :name, :age, :address, :email, :password, presence: true
end
