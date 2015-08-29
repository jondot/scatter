default:
	go build -buildmode=c-shared -o libscatter.so ext/libscatter.go

bench:
	@ruby -Ilib examples/bench.rb

content: 
	@ruby -Ilib examples/content.rb

.PHONY: default bench content
