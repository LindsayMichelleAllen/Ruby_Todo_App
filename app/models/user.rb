class User < ApplicationRecord
    has_secure_password
    
    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
    validates :username, presence: true, uniqueness: true, length: { minimum: 5, maximum: 25 }
end
