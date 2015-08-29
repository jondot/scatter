require "scatter/version"
require 'json'
require 'ffi'



module Scatter
  def self.request(uris)
    ScatterBinding.scatter_request(JSON.dump({ uris: uris }))
  end

  module ScatterBinding
    extend FFI::Library
    ffi_lib File.expand_path("../ext/libscatter.so", File.dirname(__FILE__))
    attach_function :scatter_request, [:string], :string
    # Your code goes here...
  end
end

