.SUFFIXES:	.mkd .xml .txt

LIMIT = draft-fujiwara-dnsop-dns-upper-limit-values
PREV = past/$(LIMIT)-03.txt

.mkd.xml:
	kramdown-rfc $(.IMPSRC) > $(.TARGET).new
	mv $(.TARGET).new $(.TARGET)

.xml.txt:
	xml2rfc $(.IMPSRC)

all: $(LIMIT).txt

diff:
	iddiff --side-by-side $(PREV) $(LIMIT).txt > diff.html

clean:
	-rm $(LIMIT).txt $(LIMIT).xml
