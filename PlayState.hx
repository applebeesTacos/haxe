package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.animation.FlxAnimation;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.system.FlxSplash;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import js.html.Image;

class PlayState extends FlxState
{
	var spritesheet:FlxSprite;
	var text:FlxText;

	override public function create():Void
	{
		super.create();

		text = new FlxText(0, 0, 300);
		add(text);

		spritesheet = new FlxSprite();
		spritesheet.loadGraphic("assets/images/Walk.png", true, 512, 384);
		spritesheet.animation.add("walk", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 5, true);
		add(spritesheet);

		spritesheet.animation.play("walk");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
