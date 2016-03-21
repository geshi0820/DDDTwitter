=begin
Dao = Data Access Object
データにアクセスするインターフェースを持つオブジェクト
今回は、MySQLのデータにアクセスするオブジェクトなので、DaoOnMySQLという名前をつけた。
=end
class ActiveRecord::Base
  def permitted_attributes(*keys)
    Hash.new(keys.map{ |key| [key, read_attributes(key.to_sym)]})
  end
end

class DaoOnMySQL < ActiveRecord::Base
  set_table_name self.to_s.delete('Dao').underscore
end