ADA_SRCS = src/calculator_operations.adb
CXX_SRCS = calculator_interface.cpp
LIB_DIR = lib
INCLUDE_DIR = include

LIB_NAME = libcalculator.so

ADAFLAGS = -fPIC -shared
CXXFLAGS = -L$(LIB_DIR) -I$(INCLUDE_DIR) -ldl

# Standard Target
all: $(LIB_DIR)/$(LIB_NAME) calculator_interface

$(LIB_DIR)/$(LIB_NAME): $(ADA_SRCS)
	gnatmake $(ADAFLAGS) -o $@ $^

# Com inter C++
calculator_interface: $(CXX_SRCS)
	g++ -o $@ $^ $(CXXFLAGS)


clean:
	rm -f $(LIB_DIR)/$(LIB_NAME) calculator_interface
