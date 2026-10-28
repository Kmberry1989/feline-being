# Whisker District

A local, single-cat neighborhood sandbox. The playable demo cat can discover every one of its 170 native animations through eight activities: snack and water bowls, a cozy bed, a watching post, a territory post, a shallow pond, an agility course, and a consequence-free toy sparring ring.

## Local preview

Run `python3 -m http.server 4173` in this folder (or double-click `start-server.command`), then open http://127.0.0.1:4173 and choose **Play**. Opening `index.html` through `file://` blocks GLB loading.

The page imports Three.js from a CDN, so the browser needs an internet connection. No package installation is needed. `window.render_game_to_text()` and `window.advanceTime(ms)` expose gameplay state and deterministic stepping for browser checks.

## Controls

On a phone, use the left thumb stick to move relative to the camera. Drag the open play area to look around. Tap once to meow and jump, double tap to interact with a nearby object, or press and hold for a moment to sit; holding near an object interacts with it. The on-screen Explore and Meow buttons are direct alternatives to the gestures, and the nearby prompt identifies usable objects. Menu pauses play and offers Resume or Back to title.

- WASD or arrow keys: move in screen direction
- E: interact with a nearby object or nap spot
- Space: meow and jump
- Escape: pause or resume
- F: fullscreen

Yarn returns after 12 seconds; objects recover after 4 seconds. Mayhem tracks activity up to 100 while play continues.

## Activities and discovery

Double tap near an activity for its natural multi-move sequence. Press and hold, then release, to choose any animation assigned to that activity. The contextual sheet includes both original and in-place variants; model-root translation is stabilized because movement remains under game control.

The pause menu contains a discovery journal with hints and per-activity totals. Discovery is stored locally in the browser. Sparring uses aggressive, attack, hit, and theatrical flop animations as harmless play, and the cat always recovers to idle. Territory marking is optional at its designated post.

## Future multiplayer work

The earlier Firebase room transport, database rules, and the Mabel/Margo/Moxie model files remain in the repository for a later multiplayer pass. Room controls are currently hidden from the local sandbox. Multiplayer behavior has not been validated for this single-cat version.
