# email:string
# password_digest:string

# password:string_virtual
# password_confirmation:string_virtual

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
end
