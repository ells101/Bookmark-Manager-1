require 'pg'
class Bookmark
    def self.all_bookmarks
        if ENV['ENVIRONMENT'] == 'test'
            conn = PG.connect(dbname: 'bookmark_manager_test') # going into the test database if environment is 'test'
        else
            conn = PG.connect(dbname: 'bookmark_manager')
        end
        result = conn.exec( ' SELECT * FROM bookmarks ' ) 
        result.map { |bookmark| bookmark['url'] }
    end

    def self.create(url:)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'bookmark_manager_test')
        else
            connection = PG.connect(dbname: 'bookmark_manager')  
        end
        connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    end
end