#include "handler.h"
#include <cmath>
#include <stdlib.h>

using namespace std;

Handler::Handler() : sceneModal(SceneDisplayModal("Scene Models Type", 100, 100, "Scene Models Count", 9, 0, 18, 200, 100, "Scene Models Size", 100, 0, 200, 200, 100, "Scene Models Color", 128, 0, 256, 200, 100)), primitiveModal(PrimitiveDisplayModal("Model Size", 100, 0, 200, 200, 100, "Model Color", 128, 0, 256, 200, 100)) {
	drawSceneDisplay = true;
	drawPrimitiveDisplay = true;
}
void Handler::setup() {
	ofSetFrameRate(60);
	ofBackground(255, 255, 255);
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
				removeModels(x, y, z);
				break;
			}
			x = i * (boxSize + 10) + (boxSize / 2);
			y = j * (boxSize + 10) + (boxSize / 2);
			z = 0;
			if(!(modelExistsHere(x, y, z))) {
				addModels(x, y, z, color);
			}
		}
	}
}
void Handler::removeModels(double x, double y, double z) {
	float sum = (float)(x + y + z);
	auto i = begin(this->boxes);
	while (i != end(boxes)) {
		if (i->getX() == (float)x && i->getY() == (float)y && i->getZ() == (float)z) {
			i = boxes.erase(i);
		}
		else {
			++i;
		}
	}
	auto j = begin(this->cones);
	while (j != end(cones)) {
		if (j->getX() == (float)x && j->getY() == (float)y && j->getZ() == (float)z) {
			j = cones.erase(j);
		}
		else {
			++j;
		}
	}
	auto k = begin(this->spheres);
	while (k != end(spheres)) {
		if (k->getX() == (float)x && k->getY() == (float)y && k->getZ() == (float)z) {
			k = spheres.erase(k);
		}
		else {
			++k;
		}
	}
	auto l = begin(this->cylinders);
	while (l != end(cylinders)) {
		if (l->getX() == (float)x && l->getY() == (float)y && l->getZ() == (float)z) {
			l = cylinders.erase(l);
		}
		else {
			++l;
		}
	}
	return;
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
void Handler::addModels(double x, double y, double z, float color) {
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
	if(this->sceneModal.getModelType() == "box") {
		//ofDrawCircle(ofGetWidth()/2, ofGetHeight()/2, 100);
	}
	ofPushMatrix();
	ofTranslate(ofGetWidth() / 2, 0, 0);
	ofRotate(ofGetFrameNum() * .5, 0, 1, 0);
	ofPushMatrix();
	ofTranslate(-1 * ofGetWidth() / 2, 0, 0);
	for(Box i : this->boxes) {
		ofSetColor(i.getColor());
		ofBoxPrimitive box;
		box.setPosition(i.getX(), i.getY(), i.getZ());
		box.set(i.getSize());
		box.drawWireframe();
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
	ofPopMatrix();
	ofPopMatrix();
	return;
	
}
