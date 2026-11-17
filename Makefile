CXX ?= g++
CXXFLAGS = -std=c++17 -Wall -Wextra -O2
library: src/main.cpp src/Book.h src/Library.h
	$(CXX) $(CXXFLAGS) src/main.cpp -o library
run: library
	./library
demo: library
	./library demo
clean:
	rm -f library demo_library.txt
