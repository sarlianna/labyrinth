CC=g++
POLYCODE=/usr/src/Polycode/Release/Linux/Framework
CFLAGS=-g -Wall -I. -I./src -I./tools -I$(POLYCODE)/Core/Dependencies/include -I$(POLYCODE)/Core/Dependencies/include/AL -I$(POLYCODE)/Core/include -I$(POLYCODE)/Modules/include -I$(POLYCODE)/Modules/Dependencies/include -I$(POLYCODE)/Modules/Dependencies/include/bullet
LDFLAGS=-lrt -ldl -lpthread $(POLYCODE)/Core/lib/libPolycore.a $(POLYCODE)/Core/Dependencies/lib/libfreetype.a $(POLYCODE)/Core/Dependencies/lib/liblibvorbisfile.a $(POLYCODE)/Core/Dependencies/lib/liblibvorbis.a $(POLYCODE)/Core/Dependencies/lib/liblibogg.a $(POLYCODE)/Core/Dependencies/lib/libopenal.so $(POLYCODE)/Core/Dependencies/lib/libphysfs.a $(POLYCODE)/Core/Dependencies/lib/libpng15.a $(POLYCODE)/Core/Dependencies/lib/libz.a -lGL -lGLU -lSDL $(POLYCODE)/Modules/lib/libPolycode2DPhysics.a $(POLYCODE)/Modules/Dependencies/lib/libBox2D.a $(POLYCODE)/Modules/lib/libPolycode3DPhysics.a $(POLYCODE)/Modules/Dependencies/lib/libBulletDynamics.a $(POLYCODE)/Modules/Dependencies/lib/libBulletCollision.a $(POLYCODE)/Modules/Dependencies/lib/libLinearMath.a
TARGETS = $(outdir)/labyrinth

srcdir = src
outdir = bin

labyrinth: $(srcdir)/LabyrinthApp.cpp $(srcdir)/main.cpp
	$(CC) -o $(outdir)/$@ $? $(CFLAGS) $(LDFLAGS) 

clean:
	rm -f $(TARGETS)
