# Compiler and flags
CXX = clang++
CXXFLAGS = -Wall -std=c++17 -Iinclude

# Directories
SRCDIR = src
INCDIR = src
OBJDIR = obj
BINDIR = bin

# Executable name
TARGET = myprogram

# Source files (wildcard to include all .cpp files in src and subdirectories)
SRCS = $(wildcard $(SRCDIR)/**/*.cpp) $(wildcard $(SRCDIR)/*.cpp)

# Object files (convert .cpp files to .o files in obj folder)
OBJS = $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/%.o, $(SRCS))

# Default target: build the executable
all: $(BINDIR)/$(TARGET)

# Rule to build the executable
$(BINDIR)/$(TARGET): $(OBJS)
	@mkdir -p $(BINDIR)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

# Rule to compile .cpp files into .o files
$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(OBJDIR)/$(dir $<)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean rule to remove object files and executable
clean:
	rm -rf $(OBJDIR) $(BINDIR)

# Run the program
run: all
	./$(BINDIR)/$(TARGET)