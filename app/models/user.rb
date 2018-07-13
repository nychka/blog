class User < ApplicationRecord
  devise :database_authenticatable
  enum role: [:user, :admin]
end
