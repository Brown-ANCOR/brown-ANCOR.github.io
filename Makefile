
all: index.html

index.html: index.template.html static/data/info.yml static/data/talks.yml updated.txt
	@echo "Generating $@"
	@python compile.py $< > $@

updated.txt:
	@date +%D > updated.txt

.PHONY: clean updated.txt

clean:
	@echo "Cleaning up"
	@rm -f index.html
