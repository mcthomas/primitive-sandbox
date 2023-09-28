#include <array>
#include "model.h"

using namespace std;

Model::Model(float x, float y, float z, float size, const array<float,3>& color) {
	this->x = x;
	this->y = y;
	this->z = z;
	this->size = size;
	this->color = color;
}
float Model::getSize() {
	return this->size;
}
array<float,3> Model::getColor() {
	return this->color;
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
