#include <Polycode.h>
#include "PolycodeView.h"

using namespace Polycode;

class LabyrinthApp {
public:
    LabyrinthApp(PolycodeView *view);
    ~LabyrinthApp();

    bool Update();

private:
    ScreenImage *image;
    Core *core;
};
