# Photon-pixel coupling (mapping pixels to LEDs)

A [webcam](https://github.com/Gagniuc/WebCam-software-sampling) films an array of LEDs as seen in the image below. In each frame, these LEDs represent the output of different sensors and may have a variable brightness. Thus, this brightness must be converted to numerical values for [analysis](https://github.com/Gagniuc/Prototype-software-for-Photon-pixel-coupling). But which pixel from the image is the most representative for an LED brightness? The positions of the LEDs are relative to the position of the camcorder. Thus, this software allows you to set the position of each LED over an image, as well as the pixel representative for brightness. The coordinates of each LED position is recorded as a string inside an array variable. The array variable is printed as a VB6 source code in a textbox object. Next, the content of the textbox object is manually copied inside the VB6 source code of the [Vesta software](https://github.com/Gagniuc/Prototype-software-for-Photon-pixel-coupling) (please look at the source code in the Vesta software). Also, please read:

1) <i>[Photon-pixel coupling: A method for parallel acquisition of electrical signals in scientific investigations](https://www.sciencedirect.com/science/article/pii/S2215016119300901)</i>

2) <i>[The electrical activity map of the human skin indicates strong differences between normal and diabetic individuals](https://www.sciencedirect.com/science/article/abs/pii/S0956566318306663)</i> 

3) <i>[Maps of electrical activity in diabetic patients and normal individuals](https://www.sciencedirect.com/science/article/pii/S2352340918312204)</i>

Programming language: Visual Basic 6.0

![screenshot](https://github.com/Gagniuc/Mapping-pixels-to-LEDs-for-the-Photon-pixel-coupling-method/blob/main/Map%20pixels%20to%20LEDs%20(1).PNG)
![screenshot](https://github.com/Gagniuc/Mapping-pixels-to-LEDs-for-the-Photon-pixel-coupling-method/blob/main/Map%20pixels%20to%20LEDs%20(2).PNG)

# References
▪	<i>Gagniuc, P.A., Ionescu-Tirgoviste, C., Gagniuc, E.. Photon-pixel coupling: a method for parallel acquisition of electrical signals for scientific investigations. Methods X, 6(2019) 968-979.</i>

▪	<i>Constantin IONESCU-TIRGOVISTE*, Paul A. GAGNIUC*, Elvira Gagniuc. The electrical activity map of the human skin indicates strong differences between normal and diabetic individuals: A gateway to onset prevention. Biosensors and Bioelectronics, 120 (2018) 188–194. </i>

▪	<i>Ionescu-Tirgoviste, C., Gagniuc, P.A., Gagniuc, E.. Maps of electrical activity in diabetic patients and normal individuals.  Data Brief. 2018, 21: 795–832.</i>
