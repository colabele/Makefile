# @file Makefile
# @author Cole Belew
# @date 2024-09-20
# @brief Test Makefile
#
# Makefile to compile the code and header files
#

#The compiler
CC = g++

#Making sure all errors get flagged
CFLAGS = -g -Wall -Wextra

#The name of the final executable file
TARGET = employee

#All of the object files to be compiled into the executable file
ALL = main.o Officer.o Employee.o Supervisor.o

#Compiling all the object files into the executable file
$(TARGET): $(ALL)
	$(CC) $(CFLAGS) $(ALL) -o $(TARGET)

#compiles the main.cpp and related headers into an object file
main.o: main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFLAGS) -c main.cpp Employee.h Supervisor.h Officer.h

#compiles Employee.cpp and Employee.h into an object file
Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp Employee.h

#compiles Officer.cpp and Officer.h into an object file
Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp Officer.h

#compiles Supervisor.cpp and Supervisor.h into an object file
Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(FLAGS) -c Supervisor.cpp Supervisor.h

#Removes all the object files and EMACS backups
clean:
	$(RM) *.o *~ *.gch

#Defaults the make to create the executable
default: $(TARGET)
