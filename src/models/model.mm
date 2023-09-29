#include <array>
#include "model.h"

using namespace std;

Model::Model(float x, float y, float z, float size, const array<float,3>& color) : x(x), y(y), z(z), size(size), color(color) {
	this->x = x;
	this->y = y;
	this->z = z;
	this->size = size;
	this->color = color;
}
float Model::getX() {
	return this->x;
}
float Model::getY() {
	return this->y;
}
float Model::getZ() {
	return this->z;
}
float Model::getSize() {
	return this->size;
}
ofColor Model::getColor() {
	return ofColor(this->color[0], this->color[1], this->color[2]);
}
void Model::setColor(float r, float g, float b) {
	this->color[0] = ((color[0] + (r - color[0])) > 256) ?
	(color[0] + (r - color[0])) - 256 :
	  (color[0] + (r - color[0]));
	this->color[0] = ((color[0] + (b - color[0])) > 256) ?
	(color[0] + (b - color[0])) - 256 :
	  (color[0] + (b - color[0]));
	this->color[0] = ((color[0] + (g - color[0])) > 256) ?
	(color[0] + (g - color[0])) - 256 :
	  (color[0] + (g - color[0]));
	return;
}
void Model::rotate(float degrees, float vx, float vy, float vz) {
	//TODO
	return;
}
