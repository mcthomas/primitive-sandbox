#pragma once

#include "ofxiOS.h"
#include "../modals/sceneDisplayModal.h"
#include "../modals/primitiveDisplayModal.h"
#include "../models/box.h"
#include "../models/sphere.h"
#include "../models/cylinder.h"
#include "../models/cone.h"
#include <string>
#include <vector>

using namespace std;

class Handler {
private:
	ofxPanel gui;
	SceneDisplayModal sceneModal;
	PrimitiveDisplayModal primitiveModal;
	vector<Box> boxes;
	vector<Sphere> spheres;
	vector<Cylinder> cylinders;
	vector<Cone> cones;
	bool drawSceneDisplay;
	bool drawPrimitiveDisplay;
	const int maxPanelModels = 18;
	void rotateScene(float x1, float y1, float x2, float y2);
	void displayModal(bool isPrimitive);
	void closeModal(bool isPrimitive);
public:
	Handler();
	void setup();
	void update();
	void updateVectors();
	void removeModels(double x, double y, double z);
	bool modelExistsHere(double x, double y, double z);
	void addModels(double x, double y, double z, float color);
	void draw();
};

