#include "handler.h"

using namespace std;

Handler::Handler(void) {
	drawSceneDisplay = false;
	drawPrimitiveDisplay = false;
}
void Handler::rotateScene(float x1, float y1, float x2, float y2) {
	
}
void Handler::displayModal(bool isPrimitive) {
	if(isPrimitive) {
		drawPrimitiveDisplay = true;
	}
	else {
		drawSceneDisplay = true;
	}
}
void Handler::closeModal(bool isPrimitive) {
	if(isPrimitive) {
		drawPrimitiveDisplay = false;
	}
	else {
		drawSceneDisplay = false;
	}
}
void Handler::draw() {
	if(drawSceneDisplay) {
		//Call on method
	}
	if(drawPrimitiveDisplay) {
		//Call on method
	}
	for(Box i : boxes) {
		i.draw();
	}
	for(Sphere i : spheres) {
		i.draw();
	}
	for(Cylinder i : cylinders) {
		i.draw();
	}
	for(Cone i : cones) {
		i.draw();
	}
}
