Class {
	#name : 'VESIndividual',
	#superclass : 'Object',
	#instVars : [
		'code',
		'parents',
		'fitness',
		'esHash',
		'offsprings',
		'offspringsMutated'
	],
	#category : 'VisualizationEvoSuite',
	#package : 'VisualizationEvoSuite'
}

{ #category : 'accessing' }
VESIndividual >> code [

	^ code
]

{ #category : 'accessing' }
VESIndividual >> code: anObject [

	code := anObject
]

{ #category : 'accessing' }
VESIndividual >> esHash [

	^ esHash
]

{ #category : 'accessing' }
VESIndividual >> esHash: anObject [

	esHash := anObject asInteger
]

{ #category : 'accessing' }
VESIndividual >> fitness [

	^ fitness
]

{ #category : 'accessing' }
VESIndividual >> fitness: anObject [

	fitness := anObject
]

{ #category : 'initialization' }
VESIndividual >> initialize [
	super initialize.
	offsprings := OrderedCollection new
]

{ #category : 'as yet unclassified' }
VESIndividual >> inspectorCode [
	<inspectorPresentationOrder: 90 title: 'Code'>
	^ SpTextPresenter new
		text: self code;
		yourself.
]

{ #category : 'as yet unclassified' }
VESIndividual >> loc [
	^ code lines size
]

{ #category : 'accessing' }
VESIndividual >> parents [

	^ parents
]

{ #category : 'accessing' }
VESIndividual >> parents: anObject [

	parents := anObject
]

{ #category : 'printing' }
VESIndividual >> printOn: str [
	str nextPutAll: 'Individual LOC: ', self loc asString.
	str nextPutAll: ' Fitness: ', self fitness asString.
]
