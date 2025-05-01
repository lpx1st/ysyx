TARGETS =  
OBJECTS = $(addsuffix .o, $(TARGETS))
CC = gcc
CFLAGS = -Wall -g

$(TARGETS): %: %.o
	$(CC) -o $@ $<

$(OBJECTS): %.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f  $(OBJECTS) $(TARGETS)
