# Makefile para compilar a biblioteca Ada e a interface C++

# Caminhos dos arquivos
ADA_SRCS = src/calculator_operations.adb
CXX_SRCS = src/calculator_interface.cpp
LIB_DIR = lib
SRC_DIR = src

# Nome da biblioteca
LIB_NAME = libcalculator.so

# Flags do compilador
ADAFLAGS = -fPIC -shared
CXXFLAGS = -L$(LIB_DIR) -I$(SRC_DIR) -ldl

# Alvo padrão
all: $(LIB_DIR)/$(LIB_NAME) calculator_interface

# Compila a biblioteca Ada
$(LIB_DIR)/$(LIB_NAME): $(ADA_SRCS)
	gnatmake $(ADAFLAGS) -o $@ $^

# Compila a interface C++
calculator_interface: $(CXX_SRCS)
	g++ -o $@ $^ $(CXXFLAGS)

# Limpa os arquivos compilados
clean:
	rm -f $(LIB_DIR)/$(LIB_NAME) calculator_interface
