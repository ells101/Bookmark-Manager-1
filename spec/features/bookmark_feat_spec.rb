require 'pg'

feature 'viewing all bookmarks' do
    scenario 'page displays all bookmarks' do
        visit('/bookmarks')
        expect(page).to have_content("http://www.twitter.com")    
        expect(page).to have_content("http://www.makersacademy.com")
        expect(page).to have_content("http://www.google.com")
    end
end