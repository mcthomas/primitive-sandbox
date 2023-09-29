#pragma once

#include "model.h"

class Cone : public Model {
private:
	float radius;
	float height;
public:
	Cone(float x, float y, float z, float size, const array<float,3>& color);
	void setSize(float size);
	void setRadiusHeight();
	float getRadius();
	float getHeight();
};
	

