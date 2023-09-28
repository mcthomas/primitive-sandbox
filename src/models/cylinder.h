#pragma once

#include "model.h"

class Cylinder : public Model {
private:
	float radius;
	float height;
public:
	Cylinder(float x, float y, float z, float size, const array<float,3>& color);
	void setSize(float size);
	void setRadiusHeight();
};
