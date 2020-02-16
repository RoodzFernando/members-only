class User < ApplicationRecord
    validates :name, length: {minimum: 5} ,presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: {with: VALID_EMAIL_REGEX} ,presence: true
    validates :password, length: {in: 6..20}, presence: true

    has_secure_password
end
