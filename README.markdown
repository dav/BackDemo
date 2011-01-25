Purpose
=======

This demonstrates an apparent bug in the navigation controller library for iOS 4.2.1.

This is a barely modified Navigation-based template project created in XCode 3.2.5

The custom code does the following:
- Pushes a NonRootViewController onto the navigation stack when the user selects the Forward table item in the template-provided RootViewController
- Pushes a subsequent NonRootViewController when the user pushes the Next button in the displayed NonRootViewController

Each NonRootViewController should be displaying a back button, however weird behavior is encountered instead.

Watch the demo video of this happening in the simulator: http://vimeo.com/19150735

