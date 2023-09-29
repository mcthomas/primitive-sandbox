#include "handler.h"
#include <cmath>
#include <stdlib.h>

using namespace std;

Handler::Handler() : sceneModal(SceneDisplayModal("Scene Models Type", 100, 100, "Scene Models Count", 9, 0, 18, 200, 100, "Scene Models Size", 100, 0, 200, 200, 100, "Scene Models Color", 128, 0, 256, 200, 100)), primitiveModal(PrimitiveDisplayModal("Model Size", 100, 0, 200, 200, 100, "Model Color", 128, 0, 256, 200, 100)) {
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
void Handler::update() {
	//Checks if btn was released after a press; increments current model type
	this->sceneModal.checkBtnPressed();
	updateVectors();
	return;
}
void Handler::updateVectors() {
	double depth = ofGetWidth() > ofGetHeight() ? ofGetWidth() : ofGetHeight();
	double totalSpace = ofGetWidth() * ofGetHeight();
	double sqrtSpace = sqrt((double)totalSpace/this->maxModels);
	double boxSize = sqrtSpace - 28;
	int xRows = ofGetWidth() / (boxSize + 10);
	int yRows = this->maxModels / xRows;
	int modelCounter = 0;
	float color = this->sceneModal.colorSliderRef;
	double x, y, z;
	for(int i = 0; i < xRows; i++) {
		for(int j = 0; j < yRows; j++) {
			modelCounter++;
			if(modelCounter > this->sceneModal.counterSliderRef) {
				break;
			}
			x = i * (boxSize + 10) + (boxSize / 2);
			y = j * (boxSize + 10) + (boxSize / 2);
			z = 0;
			if(!(modelExistsHere(x, y, z))) {
				if(this->sceneModal.getModelType() == "box") {
					this->boxes.push_back(Box(x, y, z, this->sceneModal.sizerSliderRef, {256 - color, 256, color}));
				}
				else if(this->sceneModal.getModelType() == "cylinder") {
					this->cylinders.push_back(Cylinder(x, y, z, this->sceneModal.sizerSliderRef, {color, 256, 256 - color}));
				}
				else if(this->sceneModal.getModelType() == "sphere") {
					this->spheres.push_back(Sphere(x, y, z, this->sceneModal.sizerSliderRef, {256, color, 256}));
				}
				else {
					this->cones.push_back(Cone(x, y, z, this->sceneModal.sizerSliderRef, {256, 256, color}));
				}
			}
		}
	}
}
bool Handler::modelExistsHere(double x, double y, double z) {
	for (Box& i : this->boxes) {
		if (i.getX() == (float)x && i.getY() == (float)y && i.getZ() == (float)z) {
			return true;
		}
	}
	for (Sphere& i : this->spheres) {
		if (i.getX() == (float)x && i.getY() == (float)y && i.getZ() == (float)z) {
			return true;
		}
	}
	for (Cone& i : this->cones) {
		if (i.getX() == (float)x && i.getY() == (float)y && i.getZ() == (float)z) {
			return true;
		}
	}
	for (Cylinder& i : this->cylinders) {
		if (i.getX() == (float)x && i.getY() == (float)y && i.getZ() == (float)z) {
			return true;
		}
	}
	return false;
}
void Handler::draw() {
	if(!drawSceneDisplay) {
		//Method to hide modals?
	}
	if(!drawPrimitiveDisplay) {
		//Method to hide modals?
	}
	this->gui.draw();
	if(this->sceneModal.getModelType() == "box") {
		//ofDrawCircle(ofGetWidth()/2, ofGetHeight()/2, 100);
	}
	for(Box i : this->boxes) {
		ofSetColor(i.getColor());
		ofDrawBox(i.getX(), i.getY(), i.getZ(), i.getSize());
	}
	for(Sphere i : this->spheres) {
		ofSetColor(i.getColor());
		ofDrawSphere(i.getX(), i.getY(), i.getZ(), i.getRadius());
	}
	for(Cylinder i : this->cylinders) {
		ofSetColor(i.getColor());
		ofDrawCylinder(i.getX(), i.getY(), i.getZ(), i.getRadius(), i.getHeight());
	}
	for(Cone i : this->cones) {
		ofSetColor(i.getColor());
		ofDrawCone(i.getX(), i.getY(), i.getZ(), i.getRadius(), i.getHeight());
	}
	return;
}
