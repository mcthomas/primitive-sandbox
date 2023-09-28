#pragma once

#include "model.h"

class Sphere : public Model {
private:
	float radius;
public:
	Sphere(float x, float y, float z, float size, const array<float,3>& color);
	void setSize(float size);
	void setRadiusHeight();
};
