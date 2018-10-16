class User < ActiveRecord::Base
    has_secure_password
    validates :name, presence: true, length: {maximum: 50} #limite de 50 caracters para nome
    validates :password, presence: true, length: {minimum: 6} #minimo de 6 caracters password
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    validates :profile, presence: true
    before_save { self.email = email.downcase }
end