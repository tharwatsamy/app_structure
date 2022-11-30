

This App Follows the BLOC + Repository Pattern Archtecture. 

**BlOC** (Busines Logic Component) is an Architectrual design pattern recommended by google engineers for enterprise apps, Similar to redux.

For dependecy injection, **GetIt** is used, it is a dependency injection framwork based on the sevice locator pattern.

For Api request we are using dio 

for navigation we are using GetRoute

for functional programming we are using dartz

The project folders are organised feature-based, first level dirs contains :

- Features 
- Core

Second level dirs:

* Feature 
  - Presentation
    - views  => contains all the ui related data
    - manger => holds the cubits that mange that states of our app
  - data 
    - models => contains all the model related to the feature
    - repositries =? contains the abstract repo and it's implementation
* Core     
  - The Core folder contains app general atrtributes common among all features  like Errors , Utils , Mixins , Api wrapper 
