---
title: "Setting Up Environment for Angular Development"
date: 2018-02-03T22:27:54-08:00
draft: true
---


### Tools you'll be requiring during this process
1. [node.js](https://nodejs.org/en/download/)
2. angular-cli
3. Any text editor (here are some I would recommend):
    - Visual Studio Code
    - Atom
    - Sublime 3
    - Notepad++

#### Installing node.js
![alt text][screen1]
[screen1]: /images/setting-up-environment-for-angular-development/screen1.png "Downloading node.js"

- I'd recommend downloading the LTS build (current build is for devs and might have some bugs in it therefore it might be unstable)

![alt text][screen2]
[screen2]: /images/setting-up-environment-for-angular-development/screen1.png "Installing process"

- Do not change these options unless you know what you are doing
- It might impact you to not be able to access node from the `cmd` if you make some changes here

#### Installing angular-cli
- Start off with closing all your `cmd` &amp; `powershell` windows
- Ensure you have `node` installed:
    - Open `cmd` (by searching from the start menu or by pressing `windows + r` and typing in `cmd`)
    - Type `node -v` followed by `npm -v`; If you recieve an error on any of the following commands go through the previous step
- Install angular-cli by running `npm i -g @angular/cli` (-g flag enabled the flag for global)
- Now you're good to go and start creating angular applications

#### Creating your first Angular application
- Open a shell at a location where you want the new application to be installed e.x. Desktop
- Run the command `ng new your-app-name-here`
- The files will be generated instantaneously, however it will take angular to finish installing all the packages a little while depending on your internet speed

---

Congratulations 🎉🎉🎉🎉! You've setup your environment for Angular Development and are ready to create Angular Applications! Angular has a great tutorial to get you started for your first application; you can access it by clicking [here](https://angular.io/tutorial).