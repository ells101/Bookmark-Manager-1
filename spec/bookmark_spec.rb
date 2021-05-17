require 'bookmark'

describe Bookmark do
    describe '.all_bookmarks' do
        it 'displays all the bookmarks' do
            bookmarks = Bookmark.all_bookmarks
            expect(bookmarks).to include("http://www.makersacademy.com")
            expect(bookmarks).to include("http://www.gowebme.co.uk")
            expect(bookmarks).to include("http://www.google.com")
        end
    end
end