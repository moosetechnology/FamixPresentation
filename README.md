# FamixPresentation

A presentation layer independant of a GUI for Famix. The goal of the project is to be used by divers GUI and share what can be shared between those.

- [Installation](#installation)
- [Version management](#version-management)
- [Smalltalk versions compatibility](#smalltalk-versions-compatibility)
- [Contact](#contact)

## Installation

To install the project in your Pharo image execute:

```Smalltalk
    Metacello new
    	githubUser: 'moosetechnology' project: 'FamixPresentation' commitish: 'v1.x.x' path: 'src';
    	baseline: 'FamixPresentation';
    	load
```

To add it to your baseline:

```Smalltalk
    spec
    	baseline: 'FamixPresentation'
    	with: [ spec repository: 'github://moosetechnology/FamixPresentation:v1.x.x/src' ]
```

Note that you can replace the #v1.x.x by another branch such as #development or a tag such as #v1.0.0, #v1.? or #v1.1.?.

## Version management 

This project use semantic versioning to define the releases. This means that each stable release of the project will be assigned a version number of the form `vX.Y.Z`. 

- **X** defines the major version number
- **Y** defines the minor version number 
- **Z** defines the patch version number

When a release contains only bug fixes, the patch number increases. When the release contains new features that are backward compatible, the minor version increases. When the release contains breaking changes, the major version increases. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.

## Smalltalk versions compatibility

| Version 	| Compatible Pharo versions 		|
|-------------	|---------------------------	|
| 1.x.x       	| Pharo 80				|

## Contact

If you have any questions or problems do not hesitate to open an issue or contact cyril (a) ferlicot.me 
