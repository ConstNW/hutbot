package tg;

import neelts.TelegramBotAPI;

/*
    Type of the entity. Can be:
        mention (@username),
        hashtag,
        cashtag,
        bot_command,
        url,
        email,
        phone_number,
        bold (bold text),
        italic (italic text),
        code (monowidth string),
        pre (monowidth block),
        text_link (for clickable text URLs),
        text_mention (for users without usernames)
*/
enum MessageEntity {
    BotCommand(cmd : String);
}

enum MessageType {
    Text;
    Command;
    Join;
    Left;
}

abstract IncomeMessage(Message) from Message
{
    public var src (get, never) : Message;

    public var id (get, never) : Int;
    public var entities (get, never) : Array<MessageEntity>;
    public var date (get, never) : Date;
    public var chat (get, never) : tg.Chat;
    public var from (get, never) : tg.User;
    // public var text (get, never) : String;
    public var type (get, never) : MessageType;


    public function new( m : Message )
    {
        this = m;
    }

    function get_id( ) return this.message_id;
    function get_entities( )
    {
        var ents = [];
        for (e in this.entities) switch (e.type)
        {
            case 'bot_command': ents.push(BotCommand(this.text.substr(e.offset, e.length)));
            default:
        }

        return ents;
    }
    function get_date( ) return Date.fromTime(1000.0 * this.date);
    function get_chat( ) return tg.Chat.getFromData(this.chat);
    function get_from( ) return tg.User.getFromData(this.from);
    // function get_text( ) return this.text;
    function get_type( )
    {
        if (this.new_chat_members != null) return Join;
        if (this.left_chat_member != null) return Left;

        if (this.entities != null) for (e in this.entities) if (e.type == 'bot_command') return Command;

        return Text;
    }
    function get_src( ) return this;
}