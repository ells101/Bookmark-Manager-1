require 'bookmark'
RSpec.describe Bookmark do


    describe '#all_bookmarks' do
        it 'returns a list of bookmarks' do
          connection = PG.connect(dbname: 'bookmark_manager_test')
      
          # Add the test data
          connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
          connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
          connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
      
          bookmarks = Bookmark.all_bookmarks
      
          expect(bookmarks).to include('http://www.makersacademy.com')
          expect(bookmarks).to include('http://www.destroyallsoftware.com')
          expect(bookmarks).to include('http://www.google.com')
        end
    end

    describe '.create' do 
        it 'creates a new bookmark' do
        Bookmark.create(url: 'http://www.testbookmark.com')

        expect(Bookmark.all_bookmarks).to include 'http://www.testbookmark.com'
        end
    end
end