FILES = test.cpp
LIBS = -L/Users/okamoto/program_doc/libcmaes-mac/src/.libs -lcmaes -Xpreprocessor -fopenmp
INCLUDES = -I/opt/homebrew/include/eigen3/ -I/Users/okamoto/program_doc/libcmaes-mac/src
OPTION = -O3 -w -std=c++11
GPP = clang $(OPTION)
PROGRAM = test

all: $(FILES)
	$(GPP) $(FILES) $(LIBS) $(INCLUDES) -o $(PROGRAM)

clean:
	@rm $(PROGRAM)