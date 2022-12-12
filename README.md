# TrollStore Detector
A Swift UI TrollStore detector

## What is TrollStore Detector ?
TrollStore Detector is a Swift program detecting if TrollStore is installed by checking if TrollStore type apps (listed in list.md) have created directory in /private/var/ (listen in paths.md).
You can use this project without crediting it. The only goal of this is to contribute on TrollStore directorys.
You can of course contribute to the directory list (paths.md).
### What to keep and what can you remove ?
Everything is in `iOSTrollstoreDetectionApp.swift`. The script is divided into several parts :
- Basic Structure
  - Check if one of the paths exist
  - If one path exist then UI Alert (replace this with anything you want, you're own code for exemple that prevent user that he's TrollStoreed)
