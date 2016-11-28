#OOP Assignment 1 

Page 1: for my loading screen I began by making a loading bar. I done this done by using 2 rectangles drawing over one another in a different colour. I then wanted to add a way of switching between my screens using buttons. So I began with with creating a rectangle in the centre of the screen that allows the text with the instructions for the user to switch between the screens. My rectangle has a forth parameter that rounds the corners because its more easy on the eye for me. Next I decided I would add a percentage symbol on the loading bar. It is done by incrementing the variable along side the percentage sign. This is synced with the loading bar so they finish at the same time. This wasn't a hard task just some basic maths. I then wanted bars accross the screen so I drew lines horizontally accross the screen and then colour them red and added a parameter for opacity to make it slightly transparent. Next I wanted a star background that randomly generate accross the screen in a certain colour. So I began by generating random x and y values for the star and using these points to plot a circle. I also randomised the opacity of these stars. The users can switch between screens by following the instructions on the screen by using key presses.

![alt tag](https://raw.githubusercontent.com/username/projectname/branch/path/to/img.png)

Page 2: This is the main page in my project. On this page I have multiple shapes drawn to outline the HUD. I used rectangles, triangles, ellipses, arcs and PShapes to draw these shapes. Some shapes are static, some are moving and some are interactive. The interactive parts on this page are the to turn on the last terminal, shoot bullets and play sounds. If the user holds space bar it will launch a missile into the screen where it call on two functions, to display the particles and sound for the missile exploding. The user can use the UP and DOWN arrows to turn on and off the terminal 3. They can also press 'f' to play a noise aswell. The Scan is just incrementing and decrementing on the screen to get the scan moving. The user can mouse click on the screen and a bullet will be launched to that location. This is done by using an arraylist and PVectors, to calculate the direction of the bullet and speed of the bullet. I also have this set so only 5 bullets a second can be fired. The engines move using rotate. Just increment the angle makes the triangles rotate. There are three text boxes that highlight as your mouse hovers them and displays text with instructions for the user. The background on this page is a picture loaded in to the program. 

Page 3: This is a page that just terminates the program. It displays a couple of planets that have been read in from a tsv file using loadTable and putting the information from this file into an arraylist and then accessing this and printing them to the screen. This reuses the stars() function to display the stars. If the user clicks on the planet named DIT it closes the program. 
