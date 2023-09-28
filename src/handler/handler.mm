#include "handler.h"

using namespace std;

Handler::Handler() : sceneModal(SceneDisplayModal("Scene Models Type", 100, 100, "Scene Models Count", 200, 300, 100, 100, 200, "Scene Models Size", 0, 0, 0, 0, 0, "Scene Models Color", 0, 0, 0, 0, 0)), primitiveModal(PrimitiveDisplayModal("Model Size", 0, 0, 0, 0, 0, "Model Color", 0, 0, 0, 0, 0)) {
	drawSceneDisplay = true;
	drawPrimitiveDisplay = true;
}
void Handler::setup() {
	this->gui.setup();
	this->sceneModal.setup(&gui);
	this->primitiveModal.setup(&gui);
	//Setup camera iso?
	//Populate models into vectors
}
void Handler::rotateScene(float x1, float y1, float x2, float y2) {
	return;
}
void Handler::displayModal(bool isPrimitive) {
	if(isPrimitive) {
		drawPrimitiveDisplay = true;
	}
	else {
		drawSceneDisplay = true;
	}
	return;
}
void Handler::closeModal(bool isPrimitive) {
	if(isPrimitive) {
		drawPrimitiveDisplay = false;
	}
	else {
		drawSceneDisplay = false;
	}
	return;
}
void Handler::draw() {
	this->gui.draw();
	if(!drawSceneDisplay) {
		//Method to hide modals?
	}
	if(!drawPrimitiveDisplay) {
		//Method to hide modals?
	}
	for(Box i : boxes) {
	}
	for(Sphere i : spheres) {
	}
	for(Cylinder i : cylinders) {
	}
	for(Cone i : cones) {
	}
	return;
}
