require 'pry'

class Author
  attr_reader :name
  attr_accessor :posts
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    #binding.pry
    title = Post.new(title)
    @posts << title
    title.author = self
    @@post_count += 1
    # binding.pry
  end
  def self.post_count
    @@post_count
  end

end
