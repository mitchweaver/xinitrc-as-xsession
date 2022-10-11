PREFIX = /usr/local
DESKTOP_FILE = xinitrc-as-xsession.desktop
BIN = xinitrc-as-xsession

all:
	:

install:
	install -Dm0755 ${BIN} ${DESTDIR}${PREFIX}/bin/${BIN}
	install -Dm0544 ${DESKTOP_FILE} /usr/share/xsessions/${DESKTOP_FILE}

uninstall:
	rm ${DESTDIR}${PREFIX}/bin/${BIN}
	rm /usr/share/xsessions/${DESKTOP_FILE}

