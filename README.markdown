Purpose
=======

This demonstrates an apparent bug in the navigation controller library for iOS 4.2.1.

This is a slightly modified Navigation-based template project created in XCode 3.2.5

The custom code does the following:
-  Pushes a NonRootViewController with index of 1 onto the navigation stack when the user selects the Forward table item in the template-provided RootViewController
-  Any NonRootViewController with an index less than 10 calls self.navigationItem.hidesBackButton = YES;
-  When the user taps Continue in NonRootViewController index=1, the navigationController dumps the current view controller array and start a new array with a new NonRootViewController as the new root. This controller has an index of 10.
-  Pushes a subsequent NonRootViewController with an incremented index when the user pushes the Next button in the displayed NonRootViewController

The NonRootViewController with index of 1 should show a back button with the text 'Root' as that is the title of the initial Table view
The NonRootViewController with index of 10 should not show a back button as it is now the new root view controller in the nav stack
The NonRootViewController with index of 11 should show a back button, and each subsequent one as well.

The reasoning for setting hidesBackButton in NRVC-1 is that in the production app this mock code is based on, the user is in a non-reversible flow, and sometimes this flow leads to another view controller pushed onto the stack, but sometimes it leads to the nav stack being reset as is done here. Prior to iOS 4.2.x this worked as expected, but in in this OS version it appears the back button state of the removed top view controller is affecting the new array of view controllers.

Watch the [demo video of this happening in the simulator](http://vimeo.com/19150735).

