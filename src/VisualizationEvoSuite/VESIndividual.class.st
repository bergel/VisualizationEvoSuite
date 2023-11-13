Class {
	#name : 'VESIndividual',
	#superclass : 'Object',
	#instVars : [
		'code',
		'parents',
		'fitness',
		'children',
		'esHash'
	],
	#category : 'VisualizationEvoSuite',
	#package : 'VisualizationEvoSuite'
}

{ #category : 'accessing' }
VESIndividual >> children [

	^ children
]

{ #category : 'accessing' }
VESIndividual >> children: anObject [

	children := anObject
]

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

	esHash := anObject
]

{ #category : 'accessing' }
VESIndividual >> fitness [

	^ fitness
]

{ #category : 'accessing' }
VESIndividual >> fitness: anObject [

	fitness := anObject
]

{ #category : 'accessing' }
VESIndividual >> parents [

	^ parents
]

{ #category : 'accessing' }
VESIndividual >> parents: anObject [

	parents := anObject
]
