all: build/index.html build/faq.html

build/index.html: pages/home.html
	cp pages/home.html build/index.html
	python3 tools/apply_template.py --type empty $@

build/faq.html: pages/faq.html
	cp pages/faq.html build/faq.html
	python3 tools/apply_template.py --type empty $@

clean:
	rm -rf $(HTML_PAGES)
