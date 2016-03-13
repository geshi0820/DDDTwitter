module Repository
  module ClassMethods
    def store(params)
      klass = self.to_s.delete('Repository') + 'Dao'
      klass.constantize.store(params)
    end
  end
end
