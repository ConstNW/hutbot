package tg;

import neelts.TelegramBotAPI;

typedef DispatcherApi = {
    function doMessage( d : Dispatcher, msg : IncomeMessage ) : Void;
    function editMessage( d : Dispatcher, msg : IncomeMessage ) : Void;

    function doPost( d : Dispatcher, msg : IncomeMessage ) : Void;
    function editPost( d : Dispatcher, msg : IncomeMessage ) : Void;

    function doInline( d : Dispatcher, query : IncomeQuery ) : Void;
    function chooseInline( d : Dispatcher, result : ChosenInlineResult ) : Void;

    function callbackQuery( d : Dispatcher, query : CallbackQuery ) : Void;
    function shippingQuery( d : Dispatcher, query : ShippingQuery ) : Void;
    function preCheckoutQuery( d : Dispatcher, query : PreCheckoutQuery ) : Void;
    
    function doPoll( d : Dispatcher, poll : Poll ) : Void;
}


class Dispatcher
{
    public var api : TelegramBotAPI;
    var d : DispatcherApi;

    public function new( api : TelegramBotAPI, d : DispatcherApi )
    {
        this.api = api;
        this.d = d;
    }

    public function proceed( u : Update ) : Void
    {
        #if debug trace(u); #end

        if (u.message != null)
        {
            var im : IncomeMessage = u.message;
            im.chat.messages.push(im);

            d.doMessage(this, im);
        }
    }
}