#pragma once

#include "model.h"

class Box : public Model {
public:
	Box(float x, float y, float z, float size, const array<float,3>& color);
	void setSize(float size);
};
