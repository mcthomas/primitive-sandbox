#pragma once

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
	SceneDisplayModal* sceneModal;
	PrimitiveDisplayModal* primitiveModal;
	vector<Box> boxes;
	vector<Sphere> spheres;
	vector<Cylinder> cylinders;
	vector<Cone> cones;
	bool drawSceneDisplay;
	bool drawPrimitiveDisplay;
public:
	Handler();
	void rotateScene(float x1, float y1, float x2, float y2);
	void displayModal(bool isPrimitive);
	void closeModal(bool isPrimitive);
	void draw();
};

