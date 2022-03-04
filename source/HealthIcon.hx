package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
        animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bftroll', [2, 3], 0, false, isPlayer);
		animation.add('bfbig', [20, 21], 0, true, isPlayer);
		animation.add('ron', [0, 1], 0, false, isPlayer);
		animation.add('trolling', [2, 3], 0, false, isPlayer);
		animation.add('gmod', [30, 31], 0, false, isPlayer);
		animation.add('thai', [32, 32], 0, false, isPlayer);
		animation.add('skit', [33, 33], 0, false, isPlayer);
		animation.add('whitty', [24, 25], 0, false, isPlayer);
		animation.add('trolling2', [4, 5], 0, false, isPlayer);
		animation.add('trolling3', [6, 7], 0, false, isPlayer);
		animation.add('trolling2e', [4, 5], 0, false, isPlayer);
		animation.add('magneto', [8, 9], 0, false, isPlayer);
		animation.add('phase8', [8, 9], 0, false, isPlayer);
		animation.add('no-bobux', [10, 11], 0, false, isPlayer);
		animation.add('notiky', [19, 20], 0, false, isPlayer);
		animation.add('larg-boi', [19, 20], 0, false, isPlayer);
		animation.add('other', [41, 41], 0, false, isPlayer);
		animation.add('fimnall', [16, 17], 0, false, isPlayer);
		animation.add('troil', [16, 17], 0, false, isPlayer);
		animation.add('trolio', [26, 27], 0, false, isPlayer);
		animation.add('ttto', [18, 18], 0, false, isPlayer);
		animation.add('nottiky', [19, 20], 0, false, isPlayer);
		animation.add('happy', [0, 1], 0, true, isPlayer);
		animation.add('smile', [28, 29], 0, false, isPlayer);
		animation.add('alone', [22, 23], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}