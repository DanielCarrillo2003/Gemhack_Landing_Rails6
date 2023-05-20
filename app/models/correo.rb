class Correo < ApplicationRecord 
    validates :name, presence: true 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
               length: { maximum:105 },
               format: {with: VALID_EMAIL_REGEX}
    validates :message, presence: true, length: {minimum:10, maximum:1000}
end