require 'pg'

def setup_test_database
  p "Test database initializing..."
  con = PG.connect(dbname: 'bookmark_manager_test', user: 'luke')
  con.exec("TRUNCATE bookmarks;")
end