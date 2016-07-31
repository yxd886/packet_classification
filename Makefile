
CPP = gcc

SRC=pkt2flow.c flow_db.c utilities.c 
OBJ=$(SRC:.c=.o)


%.o: %.c
	${CPP}  -c -I. $^ -o $@ 

pkt2flow: ${OBJ}
	${CPP}  -o pkt2flow ${OBJ} -L/usr/local/lib -L/usr/lib -lpcap

all: pkt2flow 

clean: 
	rm -f *.o
	rm -f pkt2flow