DST=./public

clean:
	@rm -rf $(DST)

build:
	@emcc calc.c -o calc.js -s WASM=1 -s "EXPORTED_FUNCTIONS=['_calc']"
	@mkdir -p $(DST)
	@cp index.html $(DST)
	@cp calc.js $(DST)
	@cp calc.wasm $(DST)

build2:
	@emcc calc.c -o calc.html -s "EXPORTED_FUNCTIONS=['_calc']"
	@mkdir -p $(DST)
	@cp calc.html $(DST)

serve:
	@node server.js
