import tg.*;

class Main
{
    public static function main( ) : Void
    {
        var bot = new TelegramBot('telegram bot token from @BotFather');
        bot.setup(new Api());
        bot.longPoll();
    }
}
