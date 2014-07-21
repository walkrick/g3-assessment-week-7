class Messages

def initialize(database_connection)
  @database_connection = database_connection
end

def create(username, message)
  insert_name_sql = <<-SQL
      INSERT INTO messages (username, message)
      VALUES ('#{username}', '#{message}')
      RETURNING id
  SQL

  @database_connection.sql(insert_name_sql).first["id"]
end
end



