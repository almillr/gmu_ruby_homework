# Ruby homework assignment part ii

class Bookmark

attr_accessor :url :title
attr_reader : last_visited
t = Time.now
last_visited = t.strftime "%Y-%m-%d %H: %M: %S"

  def initialize(url, title)
    @url = url
    @title = title
  end

 def visit!
   t = Time.now
   last_visited = t.strftime "%Y-%m-%d %H: %M: %S" 
 end 
end
