WASMFLAGS=--target=wasm32 --no-standard-libraries -Wl,--export-all -Wl,--no-entry -Wl,--allow-undefined
CFLAGS=${WASMFLAGS} -O3 -W -Wformat=2 -g -Wall -Wextra -Werror -pedantic -ffreestanding
LDFLAGS= 
FILES=main.c
OUTFILE=main.wasm
CC=clang

all: ${OUTFILE}

${OUTFILE}: ${FILES}
	${CC} ${FILES} -o ${OUTFILE} ${CFLAGS} ${LDFLAGS}

run: ${OUTFILE}
	./${OUTFILE}
