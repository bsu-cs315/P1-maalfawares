
# Project 1: 2D Physics-Based Gameplay
A simple 2D physics-based action game by Mera Alfawares.

## Game Instructions
Try to catch all the coins! Use the slider on the left to adjust the angle at which you are launching the alien. Then, press and hold down on your space bar to increase the strength of your launch. Releasing the space bar will launch the alien - hopefully, towards the coins! You have three lives to catch as many coins as you can.

## Project Report
Working on this iteration was rather fun! For the graphics requirement, I only needed to add a background. As for the sound effects, adding them was fairly straightforward as I had done it for the Collector tutorial. Lastly, to set up the limited projectiles, I not only added to my scripts, but I needed to adjust a lot of what I had done for the previous iteration too. For example, rather than having one instance of the projectile at the very start, I followed the suggestion from the project description and had it spawned from its own scene. This meant I had to find a work around for the signals that were initially connected to the projectile instance. This, however, was easily solved and not the main challenge that I ran into. Instead, it was when the Play Project button seemed to stop working, and Godot would not display a window for any scene played. There were no errors displayed in the debugger which led me to believe this was an issue with the application and not my project. However, after restarting Godot and my computer, it still wasn't working. Eventually, I discovered that it was a problem from within my scripts - that was not throwing an error for some reason - in relation to spawing the projectile and then removing it from the scene. Overall, I'm glad that this happened during one of the earlier projects, so that if it does happen again I at least know where to begin solving it. 

- [X] D-1: The repository link is submitted to Canvas before the project deadline.
- [X] D-2: The repository contains a <code>README.md</code> file in its top-level directory.
- [X] D-3: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [X] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file and no unnecessary files tracked.
- [X] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, and the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [X] C-3: You have a clear legal right to use all incorporated assets, and the licenses for all third-party assets are tracked in the <code>README.md</code> file.
- [X] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game itself.
- [X] C-5: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of T or less.
- [X] C-6: The projectile and targets are shown with 2D graphics.
- [X] C-7: The game plays an appropriate sound effect when the projectile is fired.
- [X] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [X] B-2: Earn one star.
- [X] A-1: Earn three stars.
- [X] ⭐ The player has a small inventory of projectiles, and only one can be launched at a time.
- [X] ⭐ The background and ground use 2D graphics.
- [X] ⭐ A <abbr title="Heads-Up Display">HUD</abbr> shows the current game state such as the score and number of projectiles remaining.

Again, I have attempted to fulfill all the requirements and hope to get an A. I have completed all three stars and all the project/repository details listed in categories C and D. 

## Third-Party Assets

Images are from "Physics Assets". [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). Source:
https://www.kenney.nl/assets/physics-assets

Laser Sound is from "Laser SFX.wav". Created in 2016 by [TiesWijnen](https://freesound.org/people/TiesWijnen/), [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). Source: https://freesound.org/people/TiesWijnen/sounds/339040/

Coin Sound is from "Coins 1". Created in 2016 by [ProjectsU012](https://freesound.org/people/ProjectsU012/), [CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). Source: https://freesound.org/people/ProjectsU012/sounds/341695/

Font Tourney Medium. Source: https://fonts.google.com/specimen/Tourney?sort=date licensed under [Apache 2.0](http://www.apache.org/licenses/LICENSE-2.0)
