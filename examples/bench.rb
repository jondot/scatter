require 'scatter'
require 'benchmark'
urls = %w{
  http://google.com
  http://example.com
  http://blog.paracode.com
  http://slashdot.org
  http://news.ycombinator.com
  http://ruby-lang.org
  http://rubygems.org
  http://golang.org
}

Benchmark.bmbm do |r|
  r.report("3 requests") do 
    Scatter.request(urls.shuffle.take(3))
  end

  r.report("5 requests") do 
    Scatter.request(urls.shuffle.take(5))
  end
  
  r.report("8 requests") do 
    Scatter.request(urls.shuffle.take(8))
  end
end

