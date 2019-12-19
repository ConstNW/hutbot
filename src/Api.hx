
import tg.*;
import neelts.TelegramBotAPI;


class Api
{
    public function new( )
    {
        
    }

    public function doMessage( d : Dispatcher, msg : IncomeMessage ) : Void switch (msg.type)
    {
        
        case Text:
            d.api.sendMessage({
                chat_id: msg.chat.id,
                text: 'Message recived',
            }, function( r ){
                #if debug trace(r); #end
            });
        
        case Command:
            d.api.sendMessage({
                chat_id: msg.chat.id,
                text: 'Command recived, but not recognised',
            }, function( r ){
                #if debug trace(r); #end
            });

        case Join:
            var welcome = '';
            for (u in msg.src.new_chat_members)
            {
                var user : tg.User = tg.User.getFromData(u);
                welcome += '\nHello, ${user.data.first_name}!';
            }

            d.api.sendMessage({
                chat_id: msg.chat.id,
                text: 'Someone joined chat. $welcome',
            }, function( r ){
                #if debug trace(r); #end
            });
        
        case Left:
            var user : tg.User = tg.User.getFromData(msg.src.left_chat_member);
            var bye = 'Bye-bye, ${user.data.first_name}!';

            d.api.sendMessage({
                chat_id: msg.chat.id,
                text: 'Someone left chat. $bye',
            }, function( r ){
                #if debug trace(r); #end
            });
    }

    public function editMessage( d : Dispatcher, msg : IncomeMessage ) : Void
    {

    }

    public function doPost( d : Dispatcher, msg : IncomeMessage ) : Void
    {

    }

    public function editPost( d : Dispatcher, msg : IncomeMessage ) : Void
    {

    }

    public function doInline( d : Dispatcher, query : IncomeQuery ) : Void
    {

    }
    public function chooseInline( d : Dispatcher, result : ChosenInlineResult ) : Void
    {

    }
    public function callbackQuery( d : Dispatcher, query : CallbackQuery ) : Void
    {

    }
    public function shippingQuery( d : Dispatcher, query : ShippingQuery ) : Void
    {

    }
    public function preCheckoutQuery( d : Dispatcher, query : PreCheckoutQuery ) : Void
    {

    }
    public function doPoll( d : Dispatcher, poll : Poll ) : Void
    {

    }
}