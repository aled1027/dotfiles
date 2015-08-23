# make &> out.out -- make from commandline to print output to file "out.out"
# -Werror -- turns all warnings into errors
# -w     -- no warnings
#
# $@ := filename of the target
# $< := filename of first depedency
# $^ := names of all dependencies
#
# -c flag inhibits linking: i.e. no executable is produced
#
# target: dependencies
#     recipe
#
# where target is what you want to be generated
# and dependencies is everything that needs to exists to make target
# recipe is the bash command
#
# can print anywhere using echo (can use any bash functions)
#
# the basic idea:
# g++ -c src/main.cpp -o obj/main.o
# g++ -o bin/main obj/main.o
#
# http://stackoverflow.com/questions/2908057/makefiles-compile-all-cpp-files-in-src-to-os-in-obj-then-link-to-binary

LDFLAGS= -lboost_filesystem -lboost_system -lboost_iostreams
CC=g++-4.9 -std=c++14
CFLAGS=-Wall -fpermissive -g 

SRC_DIR=src
OBJ_DIR=obj

SRCS=$(wildcard $(SRC_DIR)/*.cpp)
OBJS = $(addprefix $(OBJ_DIR)/, $(patsubst %.cpp, %.o, $(SRCS:$(SRC_DIR)/%=%)))
TGT=bin/main

$(TGT): $(OBJS)
	   $(CC) $(LDFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	   $(CC) $(CFLAGS) -c -o $@ $<

run: 
	./$(TGT)


