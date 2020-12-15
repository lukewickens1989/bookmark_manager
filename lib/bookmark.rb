# frozen_string_literal: true

# #!/usr/bin/ruby
require 'pg'

class Bookmark
  def initialize; end

  def self.all
    con = if ENV['RACK_ENV'] = 'test'
            PG.connect dbname: 'bookmark_manager_test', user: 'luke'
          else
            PG.connect dbname: 'bookmark_manager', user: 'luke'
          end

    rs = con.exec 'SELECT * FROM bookmarks'
    rs.map { |bookmark| bookmark['url'] }
  rescue PG::Error => e
    puts e.message
  ensure
    rs&.clear
    con&.close
  end

  def self.create(url:)
    connection = if ENV['RACK_ENV'] = 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end
end
