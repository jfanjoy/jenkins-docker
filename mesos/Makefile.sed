s/\(\/bin\/javac\) \(-source 1\.6 -target 1\.6\)*/\1 -source 1.8 -target 1.8 /;
/AM_CXXFLAGS\ +=\ -Wformat-security/a \
# allow deprecated declarations\
AM_CXXFLAGS += -Wno-error=deprecated-declarations\
# allow useless parentheses\
AM_CXXFLAGS += -Wno-error=parentheses\
# allow non null\
AM_CXXFLAGS += -Wno-error=nonnull
# this probably isn't safe, but we aren't
# using the binary to run mesos
AM_CXXFLAGS += -Wno-error=infinite-recursion
/^AM_CXXFLAGS.*\\/a \
    -Wno-error=parentheses              \\\
    -Wno-error=nonnull                  \\\
    -Wno-error=deprecated-declarations  \\\
    -Wno-error=nonnull                  \\