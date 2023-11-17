project := als2.als

current := other_producer_bass
target := main


compress:
	gzip -c $(project) > $(project)-temp
	rm -f $(project)
	mv $(project)-temp $(project)

decompress:
	gzip -cd $(project) > $(project)-temp
	rm -f $(project)
	mv $(project)-temp $(project)

magic:
	git show $(current):$(project) > /tmp/current.xml
	git show $(target):$(project) > /tmp/target.xml
	./magic.py /tmp/target.xml /tmp/current.xml
