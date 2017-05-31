class EmailSignUp < ApplicationRecord
  validates :email, uniqueness: true
end
