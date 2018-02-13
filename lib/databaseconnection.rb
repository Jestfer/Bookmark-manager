require 'pg'

class DatabaseConnection
  attr_reader :database

  def self.setup(dbname)
    @database = PG.connect(dbname: "#{dbname}")
  end

  def self.query(query)
    @database.exec(query)
  end

  # ALLOWS TO CREATE INSTANCE OF CLASS THAT TAKES @database
  # as an attribute
  def self.instance
    @database
  end
end
