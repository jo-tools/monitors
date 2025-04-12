# Monitors
Xojo example project

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Description
HiDPI support is a must have nowadays. The Xojo Framework for ```TargetWindows``` has quite some positioning issues in a setup with multiple monitors that have different ScaleFactors.  
This example Xojo project shows how to work around this by using the ```Windows API``` to position dialog windows, while falling back to the default Xojo Framework methods on other platforms.

Use the buttons **on the right hand side** to use the ```Windows API``` on ```TargetWindows```.

The examples show how to:
- **CenterModal**
  - Positions a Modal Dialog in the center of the parent Window.
- **FitOnMonitor**
  - Ensures the main Window is fully visible. This is highly recommended when positioning a Window according to user preferences (e.g. restore last position), as the user's setup might have changed since you've stored the last position.
- **FullScreen**
  - Ensures the main Window covers all of the Monitor.
- **Positioning** *(e.g. a modal dialog)*
  - Position a modal dialog at **a relative position to the main window**.
  - Explicitly position a modal dialog on **a relative position of a certain Monitor/Screen**.  
  That's a feature not available in the Xojo Framework.
  - Explicitly position a modal dialog using Xojo's **"virtual screen coordinates"**.  
  That's one of the biggest issues in the Xojo Framework in a multi-monitor with multi-scalefactor situation.

### ScreenShots
Example application: **Windows**
![ScreenShot: Example](screenshots/monitors-windows.png?raw=true)


## Xojo
### Requirements
[Xojo](https://www.xojo.com/) is a rapid application development for Desktop, Web, Mobile & Raspberry Pi.  

The Desktop application Xojo example project ```Monitors.xojo_project``` is using:
- Xojo 2024r4.2
- API 2

### How to use in your own Xojo project?
1. Copy the Module ```modWindowPositionFix``` to your project.
2. Have a look at how the example project is using the provided Methods.  
   E.g.: ```aWindowInstance.FitOnMonitor()```


## About
Juerg Otter is a long term user of Xojo and working for [CM Informatik AG](https://cmiag.ch/). Their Application [CMI LehrerOffice](https://cmi-bildung.ch/) is a Xojo Design Award Winner 2018. In his leisure time Juerg provides some [bits and pieces for Xojo Developers](https://www.jo-tools.ch/).

### Contact
[![E-Mail](https://img.shields.io/static/v1?style=social&label=E-Mail&message=xojo@jo-tools.ch)](mailto:xojo@jo-tools.ch)
&emsp;&emsp;
[![Follow on Facebook](https://img.shields.io/static/v1?style=social&logo=facebook&label=Facebook&message=juerg.otter)](https://www.facebook.com/juerg.otter)
&emsp;&emsp;
[![Follow on Twitter](https://img.shields.io/twitter/follow/juergotter?style=social)](https://twitter.com/juergotter)

### Donation
Do you like this project? Does it help you? Has it saved you time and money?  
You're welcome - it's free... If you want to say thanks I'd appreciate a [message](mailto:xojo@jo-tools.ch) or a small [donation via PayPal](https://paypal.me/jotools).  

[![PayPal Dontation to jotools](https://img.shields.io/static/v1?style=social&logo=paypal&label=PayPal&message=jotools)](https://paypal.me/jotools)
