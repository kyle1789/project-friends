class Friend < ApplicationRecord
  belongs_to :user
  validates :first_name, :email, presence: true
end
