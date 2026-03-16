EKITALDIAK=build/ekitaldiak/laugarren-ekitaldia.html

HTML=build/index.html \
     build/faq.html \
     build/ekitaldiak/index.html \
     $(EKITALDIAK)

all: $(HTML)

build/index.html: pages/home.html
	cp pages/home.html build/index.html
	python3 tools/apply_template.py --type empty $@

build/faq.html: pages/faq.html
	cp pages/faq.html build/faq.html
	python3 tools/apply_template.py --type empty $@

build/ekitaldiak/index.html: $(EKITALDIAK)
	python3 tools/generate_post_index.py --folder ekitaldiak > build/ekitaldiak/index.html

build/ekitaldiak/%.html: ekitaldiak/%.md
	python3 tools/remove_md_tags.py $< | cmark --to html > $@
	python3 tools/apply_template.py --type post $@


clean:
	rm -rf $(HTML_PAGES)
