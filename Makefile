# This Makefile works on most modern systems.
#
# Some machines may have a groff that can create pdf files directly,
# others may use a program other than ps2pdf for conversion.
# If it fails, play around with those bits.

SRCS=	Rv7man t.mac t1 t2 t3 t4
MACROS= -ms

paper.pdf: ${SRCS}
	refer -e -p ${SRCS} | \
	    groff -Tps ${MACROS} | ps2pdf - -  > $@

clean:
	rm -f paper.pdf
