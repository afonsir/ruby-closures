# frozen_string_literal: true

new_db = lambda do
  data = {}

  insert = lambda { |key, value| data[key] = value }
  delete = lambda { |key| data.delete(key) }
  dump   = lambda { puts data }

  { insert: insert, delete: delete, dump: dump }
end

# db = new_db.call
# db[:insert].call("Eagles", "Hell Freezes Over")
# db[:insert].call("Pink Floyd", "The Wall")
# db[:dump].call
# db[:delete].call("Pink Floyd")
# db[:dump].call
