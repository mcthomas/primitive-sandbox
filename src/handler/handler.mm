#include "handler.h"

using namespace std;

Handler::Handler(void) {
	this->sceneModal = new SceneDisplayModal("Scene Models Count", 0, 0, 0, 0, 0, "Scene Models Size", 0, 0, 0, 0, 0, "Scene Models Color", 0, 0, 0, 0, 0);
	this->primitiveModal = new PrimitiveDisplayModal("Model Size", 0, 0, 0, 0, 0, "Model Color", 0, 0, 0, 0, 0);
	drawSceneDisplay = true;
	drawPrimitiveDisplay = true;
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
	if(!drawSceneDisplay) {
		//Method to hide modals?
	}
	if(!drawPrimitiveDisplay) {
		//Method to hide modals?
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
