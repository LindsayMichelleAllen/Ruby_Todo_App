class User < ApplicationRecord
    #provided by bcrypt gem
    has_secure_password
    #create getter & setter
    attr_accessor :user
    
    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
    validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 25 }
end
