require 'scatter'
urls = %w{
  http://ruby-lang.org
  http://rubygems.org
  http://golang.org
}

puts Scatter.request(urls)

