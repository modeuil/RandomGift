class EventRandom < ApplicationRecord
  validates :name,
            format: {with: /\A[a-zA-Z]{2,20}\z/, message:"please enter only alpha-numerical characters"},
            uniqueness: {case_sensitive: false}
  validates :email,
            format:{with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/},
            uniqueness: {case_sensitive: false}
end
