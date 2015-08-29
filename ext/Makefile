build:
	go build -buildmode=c-shared -o libscatter.so libscatter.go

# fake out clean and install
clean:
install:

bench:
	@ruby -I../lib ../examples/bench.rb

content: 
	@ruby -I../lib ../examples/content.rb

.PHONY: build bench content
