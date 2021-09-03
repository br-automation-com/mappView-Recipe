## Table of Contents
* [Introduction](#Introduction)
* [Requirements](#Requirements)
* [Revision History](#Revision-History)

<a name="Introduction"></a>
## Introduction
This is a sample project for a recipe management with mappView. It uses B&R mappRecipe to access the recipe data and supports up to 3 concurrent web clients as well as Unicode recipe names. Unicode names are required for language that require special fonts (Chinese, Japanese, Russian, ..).

![](Logical/mappView/Resources/Media/screenshot.png)

Also see [**How to import the user management into an existing project.**](/Logical/mappRecipe/HowToImport.pdf) Download the latest release from [**here.**](../../releases) When upgrading from a previous version make sure to delete the files that were imported before. Detailed information are available in the [**Wiki**](https://github.com/br-automation-com/mappView-Recipe/wiki). This sample can run in simualtion mode (http://127.0.0.1:81/).

<a name="Requirements"></a>
## Requirements
* Automation Studio 4.9
* mappView 5.15
* mappServices 5.15
* Automation Runtime C4.90

Recommended task class is #8 with a 10ms cycle time.

<a name="Revision-History"></a>
## Revision History

#### Version 1.3 (03.09.2021)
- Update project to Automation Studio 4.9 and mapp 5.15
- Fixed an issue where the recipe management would not recover correct from an error

