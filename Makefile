CC              := gcc
CFLAGS          := -ggdb  -Wall -Wextra -pedantic -std=c99
OBJECTS         := 
LIBRARIES       := `pkg-config --libs opencv` -lm -pthread
LIBS := -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml -lopencv_video -lopencv_features2d -lopencv_calib3d -lopencv_objdetect -lopencv_contrib -lopencv_legacy -lopencv_flann -lm -pthread
SRC             := motion-sensor-opencv.c
BIN             := $(subst .c,,$(SRC))

.PHONY: all clean

all: test

test: 
	$(CC) $(CFLAGS) -o $(BIN) $(SRC) $(LIBS)
        
clean:
	rm -f $(BIN)
