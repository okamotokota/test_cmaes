FILES = test.cpp
LIBS = -lm -lcmaes -L/usr/local/lib/ -fopenmp
INCLUDES = -I/opt/homebrew/include/eigen3/ -I/usr/local/include 
OPTION = -O3 -w -std=c++11
GPP = @g++-13 $(OPTION)
PROGRAM = test

$(PROGRAM): $(FILES)
	$(GPP) $(FILES) $(LIBS) $(INCLUDES) -o $(PROGRAM)

clean:
	@rm $(PROGRAM)