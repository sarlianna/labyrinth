#include "LabyrinthApp.h"

LabyrinthApp::LabyrinthApp(PolycodeView *view)
{
  core = new POLYCODE_CORE(view, 640, 480, false, false, 0, 0, 90);

  CoreServices::getInstance()->getResourceManager()->addArchive("Resources/default.pak");
  CoreServices::getInstance()->getResourceManager()->addDirResource("default", false);

  Screen *screen = new Screen();
  //image = new ScreenImage("Resources/");
  //screen->addChild(image);
}

LabyrinthApp::~LabyrinthApp()
{
}

bool
LabyrinthApp::Update() {
  //image->something(changes);
  return core->updateAndRender();
}
