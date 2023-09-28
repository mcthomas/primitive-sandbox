#include "ofApp.h"

ofBoxPrimitive box;

//--------------------------------------------------------------
void ofApp::setup(){
	//box.set( 300 );
	//gui.setup();
	handler.setup();
	//gui.add(radius.setup("radius", 140, 10, 300, 200, 800));
//	radius.setSize(200, 800);
	return;
}

//--------------------------------------------------------------
void ofApp::update(){
	handler.update();
	return;
}

//--------------------------------------------------------------
void ofApp::draw(){
	//box.setPosition(ofGetWidth() / 2, ofGetHeight() / 2, 0);
	//box.rotate(0.7, 0, 1.0, 0.0);
	//box.drawWireframe();
	handler.draw();
	//ofDrawCircle(ofGetWidth()/2, ofGetHeight()/2, 100);
	return;
}
