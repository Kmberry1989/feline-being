# Whisker District

Three-player cat mischief prototype. Mabel, Margo, and Moxie use the animation library from cat_-_realistic_3d_model_demo_free.glb; the three named cat files are visual target rigs only.

## Local preview

Do not double-click index.html; browsers block GLB loading from file:// pages. Double-click start-server.command, or run python3 -m http.server 4173 in this folder, then open http://127.0.0.1:4173. Choose Local preview. The preview exercises movement, cat switching, source animation retargeting, meowing, yarn pickup, and environmental chaos without requiring a backend.

## Firebase rooms

The repository is connected to the existing Firebase project whose display name is **Whisker District** (`studio-6552235547-9af30`). The project ID is immutable, so the old ID remains in Firebase URLs and configuration. Its Web app, Anonymous sign-in provider, default Realtime Database, and rules are already configured in the project.

For future rules or auth changes, run `npx firebase-tools@latest deploy --only auth,database --project studio-6552235547-9af30`. Serve the folder from an authorized HTTP domain and open the page on separate devices.

The room supports three active players. Each player claims one unclaimed cat, and a switch releases the old claim atomically before taking the new one. Presence uses onDisconnect to release a cat after a disconnect.

## Controls

- WASD or arrow keys: move
- Space: meow/jump
- E or Chaos button: scratch a nearby object or nap at the shared nap spot
- Switch cat: claim an unclaimed cat
- F: fullscreen

The page exposes window.render_game_to_text() and window.advanceTime(ms) for deterministic browser validation.
