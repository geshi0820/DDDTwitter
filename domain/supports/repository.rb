class Repository
  include ActiveModel::Model
  class << self
    # need more colorfully
    def find(id)
      dao.find(id)
    end

    def create(params)
      dao.create(params)
    end

    def update(params)
      dao.update(params)
    end

    def delete(id)
      dao.delete(id)
    end

    private
    def dao
      dao_string = self.to_s.gsub('Repository') << 'Dao'
      dao_string.constantize
    end
  end
end
