class UserRepository < Repository
  class << self
    def store!(id: ,name: , email: ,password: )
      UserDao.create!(id, name, email, password)
    end
  end
end