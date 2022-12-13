<img src='https://i.ibb.co/Ksc0RFR/Pag-NX-modified.png' width=100>

# TrollStore Detector
A Swift UI TrollStore detector

## What is TrollStore Detector ?
TrollStore Detector is a Swift program detecting if TrollStore is installed by checking if TrollStore type apps have created directory in /private/var/ (listed in paths.txt).

You can use this project without crediting it. The only goal of this is to contribute on TrollStore directorys.

You can of course contribute to the directory list (paths.txt). 

Please note : Users that had installed TrollStore in the past, and now updated and lost TrollStore, will be detected as TrollStored too ! Please also note that this is not perfect. Basic TrollStore without anything installed will NOT be detected.
### What to keep and what can you remove ?
Everything is in `iOSTrollstoreDetectionApp.swift`. The script is divided into several parts :
- Basic Structure (call ContentView() for example)
  - Check if one of the paths exist
  - If one of the path exist then UI Alert (replace this with anything you want, you're own code, that prevent user that he's TrollStoreed)
- End of basic structure
- UI Alert script (delete this if you don't use the UI Alert call)

I've documented the code aswell, so it should be understable. If you have any question, create an Issue or contact me on Twitter.
### Hey, I have some TrollStore apps path !
Fork the project, add the path in paths.txt, and I will for sure merge it !
### What's the IPA in release for ?
For testing purposes, so you can test it if you want and then deduce if it works for you.
