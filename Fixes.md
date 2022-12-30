# List of Fixes / Improvements

- `_polymod_info.json` in `example_mods/introMod`.
- flixel 5.0.0 compatibility
- newer polymod compatibility
- fonts no longer embedded into game
- dialogue boxes no longer get created when there is no use for them
- dialogue boxes no longer have unused parameter `talkingRight` in constructor
- cleaner way for doing week 6 cutscenes
- remove unneccesary `setPosition` to setting parameters in constructor of `camFollow`
- remove unneccsary `posX` and `posY` variables from stage in Thorns
- remove unused (as of this build) shaders for background movement in Thorns
- add `Vector2` class to simplify certain functions
- use `Vector2` in `BGSprite` instead of seperate x or y values
- switch any #if relating to discord to `#if discord_rpc` instead of `#if desktop`
- allow `switch` platform to have highscores (not sure why this was prevented before)
- remove `#if (haxe > 4.0.0)` statements
- remove unused variables and refactor some other code in `Alphabet`
- move out functions from `CoolUtil` into seperate classes
- consistently format code
- code using built in functions to make things simpler