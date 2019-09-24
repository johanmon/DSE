
INSTALL = ~/public_html

INSTALX = ~/public_xml

PDFLATEX = pdflatex

DIRS = \
	casty\
	chordy\
	donny\
	funky\
	garby\
	goldy\
	groupy\
	loggy\
	lify\
        mandel\
	muty\
	namy\
	opty\
	paxy\
	primy\
	routy\
	rudy\
	snapy\
	timey\
	toty\
	detector


PDF = \
	casty/casty.pdf\
	chordy/chordy.pdf\
	crash/crash.pdf\
	donny/donny.pdf\
        funky/funky.pdf\
	garby/garby.pdf\
	goldy/goldy.pdf\
	groupy/groupy.pdf\
	loggy/loggy.pdf\
	lify/lify.pdf\
	muty/muty.pdf\
        mandel/mandel.pdf\
	namy/namy.pdf\
	opty/opty.pdf\
	paxy/paxy.pdf\
	primy/primy.pdf\
	routy/routy.pdf\
	rudy/rudy.pdf\
	snapy/snapy.pdf\
	timey/timey.pdf\
	toty/toty.pdf\
	detector/detector.pdf

PUBLISH = \
	casty/casty.pdf\
	chordy/chordy.pdf\
	crash/crash.pdf\
        funky/funky.pdf\
	garby/garby.pdf\
	goldy/goldy.pdf\
	groupy/groupy.pdf\
	loggy/loggy.pdf\
	lify/lify.pdf\
	muty/muty.pdf\
        mandel/mandel.pdf\
	namy/namy.pdf\
	opty/opty.pdf\
	paxy/paxy.pdf\
	primy/primy.pdf\
	routy/routy.pdf\
	rudy/rudy.pdf\
	snapy/snapy.pdf\
	timey/timey.pdf\
	toty/toty.pdf\
	detector/detector.pdf

all: $(PDF)

%.pdf : %.tex
	$(PDFLATEX)  -output-directory=$(@D) $< 

install : dse.html $(PUBLISH)
	for file in $(PUBLISH); do\
	  cp $$file $(INSTALL)/dse/$(file);\
        done;\
	cp dse.xml $(INSTALX) 

clean :
	rm -f *.dvi *.ps *.aux *.log *.out *.*~;\
	for dir in $(DIRS); do\
	  cd $$dir && rm -f *.dvi *.ps *.aux *.log *.out *.*~;\
	  cd ../;\
	done


realclean : clean
	rm -f */*.pdf;
