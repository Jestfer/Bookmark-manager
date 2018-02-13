require 'databaseconnection'

describe DatabaseConnection do

  subject(:dbconnection) { described_class.setup("bookmark_manager_test") }
  subject(:query) { described_class.query("SELECT * FROM links") }

  describe ".setup" do
    it "connects to a database" do
      expect(dbconnection).to be_an_instance_of(PG::Connection)
    end
  end

  describe ".query" do
    xit "takes a query as argument" do
      expect(query).to take(1).arg
    end

    it "executes the query" do
      dbconnection
      # En 'result' almacenamos el objeto PG::Result
      result = query
      result.map { |hash| hash['url'] }
      expect(result.count).to eq 3
    end
  end
end
