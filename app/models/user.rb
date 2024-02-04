class User < ApplicationRecord
    validates :name, presence: true, length :{minimum: 5, maximum: 255}
    validates :email, presence: true, uniqueness: true, length :{minimum: 3, maximum: 50}, format: { with: URI::MailTo::EMAIL_REGEXP }
    before_create :downcase_email
    validates :age, presence: true, numericality: { only_integer: true }, length :{greater_than_or_equal_to: 18, less_tha_or_equal_to: 100}
end
