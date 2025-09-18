.SUFFIXES:	.mkd .xml .txt

LIMIT = draft-fujiwara-dnsop-dns-upper-limit-values
PREV = past/$(LIMIT)-00.txt

.mkd.xml:
	kramdown-rfc $(.IMPSRC) > $(.TARGET).new
	mv $(.TARGET).new $(.TARGET)

.xml.txt:
	xml2rfc $(.IMPSRC)

all: $(LIMIT).txt

clean:
	-rm $(LIMIT).txt $(LIMIT).xml
