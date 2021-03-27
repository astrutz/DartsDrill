# DartsDrill
![GitHub](https://img.shields.io/github/license/astrutz/DartsDrill?color=blue)
![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/astrutz/DartsDrill/DartsDrill%20(DEV)/dev?label=build%20%28dev%29)
![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/astrutz/DartsDrill/DartsDrill%20(PROD)/master?label=build%20%28prod%29)  
  
 DartsDrill is a multi-plattform darts training app, which allows you to create your individual training plan and practise with different exercises and drills. Data synchronization and analyzable statistics help to improve your game.    
   
<img src="https://raw.githubusercontent.com/astrutz/DartsDrill/master/docs/design/AppIcon.png" alt="" data-canonical-src="https://github.com/astrutz/DartsDrill/blob/master/docs/design/AppIcon.png" width="200" height="200" /> 

[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/astrutz/DartsDrill?style=for-the-badge&sort=semver&label=Download)](https://github.com/astrutz/DartsDrill/releases/latest)
 
[Demo in browser](https://astrutz.github.io)

## Table of contents
* [General info](#general-info)
* [Screenshots](#screenshots)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Milestones](#milestones)
* [Contact](#contact)

## General info
Darts has seen a boom in recent years. There are many apps for counting and training, but none offer the opportunity to create training plans yourself and improve your game in the long term. DartsDrill is a free, ad-free, open-source app that runs on multiple platforms and is designed to help darts players train and throw better darts.

## Screenshots
![Hauptmenü (Buttons)](https://github.com/astrutz/DartsDrill/blob/master/docs/design/Hauptmen%C3%BC%20(Buttons).png)

![Round the World](https://github.com/astrutz/DartsDrill/blob/master/docs/design/Round%20the%20World.png)

## Technologies
* [Flutter - version 2.0.2](https://flutter.dev/docs/development/tools/sdk/releases)
* [Dart - version 2.12.1](https://dart.dev/get-dart)
* [Material Components for Flutter](https://github.com/material-components/material-components-flutter)

## Setup
```
flutter config --enable-web
flutter pub get
flutter run
```
If there are multiple devices connected, use the `-d` flag to chose your device as [described here](https://flutter.dev/docs/get-started/web).
[Demo in browser](https://astrutz.github.io)

## Features
* Play over 20 different training games
* Create own training plans and play them manually or at a given intervall
* See your stats and link them between different devices

To-do list:
* Implement more games
* Integrate plans
* Use adaptive design
* Dark mode (yeah!)
* See issues for more

## Milestones
|1. Organization|2. Concept|3. Design|4. Implementation|5. Release|  
|:-------------:|:--------:|:-------:|:---------------:|:-----------------:|
|![](https://img.shields.io/badge/Status-done-brightgreen)|![](https://img.shields.io/badge/Status-done-brightgreen)|![](https://img.shields.io/badge/Status-in%20work-yellow)|![](https://img.shields.io/badge/Status-in%20work-yellow)|![](https://img.shields.io/badge/Status-open-red)|
|![GitHub milestone](https://img.shields.io/github/milestones/progress-percent/astrutz/DartsDrill/5?color=brightgreen&label=Progress)|![GitHub milestone](https://img.shields.io/github/milestones/progress-percent/astrutz/DartsDrill/1?color=brightgreen&label=Progress)|![GitHub milestone](https://img.shields.io/github/milestones/progress-percent/astrutz/DartsDrill/2?color=yellow&label=Progress)|![GitHub milestone](https://img.shields.io/github/milestones/progress-percent/astrutz/DartsDrill/3?color=yellow&label=Progress)|![GitHub milestone](https://img.shields.io/github/milestones/progress-percent/astrutz/DartsDrill/4?color=red&label=Progress)|


## Changelog
### Version 0.1-alpha
* Basic menu and functionalities
* GameMode to play through and framework for more games
* Example games: "Around the World" and "Survive 61"

## Contact
Created by [@astrutz](https://www.github.com/astrutz) - feel free to contact me!
