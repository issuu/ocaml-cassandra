# Simple wrapper from gnu make to omake
default:
	omake

install:
	./reinstall

clean:
	omake clean
	find . -name \*~ -o -name \*.omc | xargs rm -f

%:
	omake $@
