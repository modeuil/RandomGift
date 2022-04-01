class User < ApplicationRecord

  has_secure_password
  has_secure_token :confirmation_token
  validates :username,
            format: {with: /\A[a-zA-Z0-9_]{2,20}\z/, message:"please enter only alpha-numerical characters"},
            uniqueness: {case_sensitive: false}
  validates :email,
            format:{with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/},
            uniqueness: {case_sensitive: false}
end
