require 'pg'

class DatabaseConnection

  attr_reader :database

  def self.setup(dbname)
    @database = PG.connect(dbname: "#{dbname}")
  end

  def self.instance
    @database
  end

end
