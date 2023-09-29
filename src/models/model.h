#pragma once
#include <array>
#include "ofxiOS.h"

using namespace std;

class Model {
protected:
	float x;
	float y;
	float z;
	float size;
	array<float,3> color;
	Model(float x, float y, float z, float size, const array<float,3>& color);
public:
	float getX();
	float getY();
	float getZ();
	float getSize();
	virtual void setSize(float size) = 0;
	ofColor getColor();
	void setColor(float r, float g, float b);
	void rotate(float degrees, float vx, float vy, float vz);
};

