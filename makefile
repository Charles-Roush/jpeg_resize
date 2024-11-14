# Compiler and flags
CXX = clang++
CXXFLAGS = -Wall -std=c++20 -Iinclude -Isrc -Isrc/file -Iimage -Iinput

# Directories
SRCDIR = src
BINDIR = bin

# Executable name
TARGET = resize

# Source files (wildcard to include all .cpp files in src and subdirectories)
SRCS = $(wildcard $(SRCDIR)/**/*.cpp) $(wildcard $(SRCDIR)/*.cpp)

# Default target: build the executable
all: $(BINDIR)/$(TARGET)

# Rule to build the executable
$(BINDIR)/$(TARGET): $(SRCS)
	@mkdir -p $(BINDIR)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Clean rule to remove the executable
clean:
	rm -rf $(BINDIR)

# Run the program
run: all
	./$(BINDIR)/$(TARGET)