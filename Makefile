project := als2.als

compress:
	gzip -c $(project) > $(project)-temp
	rm -f $(project)
	mv $(project)-temp $(project)

decompress:
	gzip -cd $(project) > $(project)-temp
	rm -f $(project)
	mv $(project)-temp $(project)

