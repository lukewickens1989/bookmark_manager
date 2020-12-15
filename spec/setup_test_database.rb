require 'pg'

def setup_test_database
  con = PG.connect(dbname: 'bookmark_manager_test', user: 'luke')
  con.exec("TRUNCATE bookmarks;")
end