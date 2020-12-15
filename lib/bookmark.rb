# #!/usr/bin/ruby
require 'pg'
puts ENV["RACK_ENV"] #currently in development env

class Bookmark
  def initialize; end

  def self.all
    if ENV['RACK_ENV'] = 'test'
      con = PG.connect dbname: 'bookmark_manager_test', user: 'luke'
    else
      con = PG.connect dbname: 'bookmark_manager', user: 'luke'
    end

    rs = con.exec 'SELECT * FROM bookmarks'
    rs.map { |bookmark| bookmark['url'] }

  rescue PG::Error => e
    puts e.message
  ensure
    rs&.clear
    con&.close
  end
end

