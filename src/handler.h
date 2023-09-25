#pragma once

#include "sceneDisplayModal.h"
#include "primitiveDisplayModal.h"
#include "box.h"
#include "sphere.h"
#include "cylinder.h"
#include "cone.h"
#include <string>
#include <vector>

using namespace std;

class Handler {
private:
	SceneDisplayModal sceneModal;
	PrimitiveDisplayModal primitiveModal;
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

