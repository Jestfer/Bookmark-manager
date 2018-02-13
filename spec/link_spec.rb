require 'link'
require 'pg'

describe Link do

  subject(:link) { described_class.all }
  subject(:new_link) { described_class.create("www.bbc.co.uk") }

  describe '.all' do
    it 'returns all links' do
      expect(link).to include("http://www.makersacademy.com")
      expect(link).to include("http://www.google.com")
      expect(link).to include("http://www.facebook.com")
    end
  end

  describe '.create' do
    it 'add link to DB' do
      new_link
      expect(link).to include("www.bbc.co.uk")
    end
  end
end
