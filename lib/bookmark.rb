require 'pg'
class Bookmark
    def self.all_bookmarks
        
        conn = PG.connect( dbname: 'bookmark_manager' )
        result = conn.exec( ' SELECT * FROM bookmarks ' ) 
         result.map { |bookmark| bookmark['url'] }
#            puts "         ID | URL "
#            result.each do |row|
#              puts " %8d | %-60s " %
#                row.values_at('id', 'url')
    end
end