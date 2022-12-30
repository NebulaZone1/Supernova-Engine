package funkin.game;

import flixel.FlxG;
import flixel.FlxSprite;
import funkin.game.PlayState;

class NoteSplash extends FlxSprite
{
    public function new(x:Float = 0, y:Float = 0, note:Int = 0)
    {
        super(x, y);

        frames = Paths.getSparrowAtlas('gameUI/noteSplashes', 'shared');

        animation.addByPrefix("splash-0", "note splash purple", 24, false);
        animation.addByPrefix("splash-1", "note splash blue", 24, false);
        animation.addByPrefix("splash-2", "note splash green", 24, false);
        animation.addByPrefix("splash-3", "note splash red", 24, false);

        setupNoteSplash(x, y, note);
        antialiasing = true;

        /*switch (PlayState.curStage)
            {
                case 'school' | 'schoolEvil':
                super(x, y);

                frames = Paths.getSparrowAtlas('pixelUI/noteSplashesPixel', 'shared');
        
                animation.addByPrefix("splash-0", "note splash purple", 24, false);
                animation.addByPrefix("splash-1", "note splash blue", 24, false);
                animation.addByPrefix("splash-2", "note splash green", 24, false);
                animation.addByPrefix("splash-3", "note splash red", 24, false);
        
                setupNoteSplash(x, y, note);
                antialiasing = true;
            }*/
    }

    public function setupNoteSplash(x:Float, y:Float, note:Int = 0)
    {
        setPosition(x, y);

        alpha = 0.9;
        animation.play('splash-' + note, false);
        scale.set(0.8, 0.8);
        updateHitbox();
        offset.set(0.6 * width, 0.6 * height);
    }

    override function update(elapsed:Float)
    {
        super.update(elapsed);
        
        if (animation.curAnim.finished)
            kill();
    }
}