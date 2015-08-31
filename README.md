# Scatter

To understand how this works, [read this article](blog.paracode.com/2015/08/28/ruby-and-go-sitting-in-a-tree/).


Scatter is a Ruby gem that uses a Go powered native extension, using Go 1.5's
new `c-shared` build mode.

It demonstrates performing parallel HTTP requests and aggregation on Go's side as
a library, and using that library as a driver within Ruby with `ruby-ffi`.


