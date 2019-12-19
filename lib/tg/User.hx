package tg;

import haxe.ds.IntMap;
import neelts.TelegramBotAPI;

typedef UserData = neelts.TelegramBotAPI.User;

class User
{
    static var users : IntMap<tg.User> = new IntMap();

    public static function getFromData( ud : UserData ) : tg.User
    {
        if (!users.exists(ud.id))
            users.set(ud.id, new User(ud));
        return users.get(ud.id);
    }

    public var data : UserData;

    function new( ud : UserData )
    {
        this.data = ud;
    }
}