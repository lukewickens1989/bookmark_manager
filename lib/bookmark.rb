# frozen_string_literal: true

require 'pg'

class Bookmark
  def initialize; end

  def self.all
    bookmark_array = []
    con = PG.connect dbname: 'bookmark_manager', user: 'luke'

    rs = con.exec 'SELECT * FROM bookmarks'

    rs.each do |row|
      bookmark_array << format('%s', row['url'])
    end
    bookmark_array
  rescue PG::Error => e
    puts e.message
  ensure
    rs&.clear
    con&.close
  end
end

# #!/usr/bin/ruby

# require 'pg'

# begin

#     con = PG.connect :dbname => 'bookmark_manager', :user => 'luke'

#     rs = con.exec "SELECT * FROM bookmarks"

#     rs.each do |row|
#       puts "%s %s" % [ row['id'], row['url'] ]
#     end

# rescue PG::Error => e

#     puts e.message

# ensure

#     rs.clear if rs
#     con.close if con

# end
