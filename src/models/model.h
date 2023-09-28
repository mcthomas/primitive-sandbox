#pragma once
#include <array>

using namespace std;

class Model {
protected:
	float x;
	float y;
	float z;
	float size;
	array<float,3> color;
protected:
	Model(float x, float y, float z, float size, const array<float,3>& color);
public:
	float getSize();
	virtual void setSize(float size) = 0;
	array<float,3> getColor();
	void setColor(float r, float g, float b);
	void rotate(float degrees, float vx, float vy, float vz);
};

