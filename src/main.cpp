#include "Polycode.h"
#include "PolycodeView.h"
#include "LabyrinthApp.h"

int
main(int argc, char *argv[])
{
  PolycodeView *view = new PolycodeView("Labyrinth");
  LabyrinthApp *app = new LabyrinthApp(view);
  while(app->Update()) {}
  return 0;
}
