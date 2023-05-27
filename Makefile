#ubuntu用
FILES = test.cpp
LIBS = -lm -lcmaes -L/usr/local/lib/ -fopenmp
INCLUDES = -I/usr/include/eigen3/ -I/usr/local/include 
OPTION = -O3 -w -std=c++11
GPP = @icpx $(OPTION)
PROGRAM = test

$(PROGRAM): $(FILES)
	$(GPP) $(FILES) $(LIBS) $(INCLUDES) -o $(PROGRAM)

clean:
	@rm $(PROGRAM)