
all: index.html

index.html: index.template.html static/data/info.yml static/data/talks.yml
	@echo "Generating $@"
	@python compile.py $< > $@

.PHONY: clean

clean:
	@echo "Cleaning up"
	@rm -f index.html