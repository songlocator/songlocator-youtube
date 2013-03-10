SRC = $(shell find . -name '*.coffee' -type f)
LIB = $(SRC:%.coffee=%.js)

all: $(LIB)

clean:
	rm -f $(LIB)

publish:
	git push
	git push --tags
	npm publish

%.js: %.coffee
	coffee --map -bc $<
