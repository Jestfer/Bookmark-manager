require 'link'
require 'pg'

describe Link do

  subject(:link) { described_class.all }

  describe '.all' do
    it 'returns all links' do
      expect(link).to include("http://www.makersacademy.com")
      expect(link).to include("http://www.google.com")
      expect(link).to include("http://www.facebook.com")
    end
  end
end
