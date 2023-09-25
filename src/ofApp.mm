#include "ofApp.h"

ofBoxPrimitive box;

//--------------------------------------------------------------
void ofApp::setup(){
	box.set( 300 );
}

//--------------------------------------------------------------
void ofApp::update(){
	
}

//--------------------------------------------------------------
void ofApp::draw(){
	box.setPosition(ofGetWidth() / 2, ofGetHeight() / 2, 0);
	box.rotate(0.7, 0, 1.0, 0.0);
	box.drawWireframe();
}
