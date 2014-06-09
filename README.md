ios-swift-todo
==============

Based on this tutorial from Apple:
https://developer.apple.com/library/iOS/referencelibrary/GettingStarted/RoadMapiOS/FirstTutorial.html

I really like this as a starter app because it has two screens and mixes storyboard and minor code development.

Turned out to be challenging though, because:

* Every Cocoa Touch boilerplate file has an invalid `init` method signature.
* Xcode 6 has a [known bug](http://stackoverflow.com/questions/24029586/xcode-6-storyboard-unwind-segue-with-swift-not-connecting-to-exit) with the unwindToList segue annotation.
* All the tutorial code is in ObjectiveC, so you need to learn at least minor points about both languages.

It was a good learning experience, but starting on Swift with no Objective C background turned out to be more challenging than expected because all the help and tutorials are written in Objective C. :)

Hopefully this code helps someone else who's new.
