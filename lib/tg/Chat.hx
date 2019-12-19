package tg;

import haxe.ds.StringMap;
import neelts.TelegramBotAPI;

typedef ChatData = neelts.TelegramBotAPI.Chat;

class Chat
{
    static var chats : StringMap<tg.Chat> = new StringMap();
    public static function getFromData( cd : ChatData ) : tg.Chat
    {
        if (!chats.exists('${cd.id}'))
            chats.set('${cd.id}', new Chat(cd));
        return chats.get('${cd.id}');
    }

    public var messages : Array<IncomeMessage>;

    var data : ChatData;
    public var id (get, never) : Float;
    public var is_group (get, never) : Bool;

    function new( cd : ChatData )
    {
        this.data = cd;
        this.messages = [];
    }

    function get_id( ) return data.id;
    function get_is_group( ) return data.id < 0;
/*
           -1 001 341 000 497
    9 223 372 036 854 775 807‬ - 64
                4 294 967 295 - 32
               -2 147 483 648 - 32 sig
*/
}