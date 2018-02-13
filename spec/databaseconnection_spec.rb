require 'databaseconnection'

describe DatabaseConnection do

  subject(:dbconnection) { described_class.setup("bookmark_manager") }

  describe ".setup" do
    it "connects to a database" do
      expect(dbconnection).to be_an_instance_of(PG::Connection)
    end
  end

  describe ".query" do

  end

end
