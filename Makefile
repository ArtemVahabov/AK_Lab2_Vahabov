CXX := g++
CXXFLAGS := -std=c++17 -O2 -Wall -Wextra
AR := ar
ARFLAGS := rcs

LIB := libcalc.a
TARGET := start

SRCS := calculator.cpp main.cpp
OBJS := $(SRCS:.cpp=.o)

.PHONY: all clean

all: $(LIB) $(TARGET)

$(TARGET): main.o $(LIB)
	$(CXX) main.o -L. -lcalc -o $@

$(LIB): calculator.o
	$(AR) $(ARFLAGS) $@ $^

%.o: %.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET) $(LIB)
