package tg;

#if macro
	import haxe.macro.Expr;
#end

import haxe.MainLoop;
import neelts.TelegramBotAPI;

import tg.Dispatcher;


class TelegramBot
{
    var token : String;
    var api : TelegramBotAPI;

    var bot : User; // {"id":893070543,"is_bot":true,"first_name":"haxe","username":"HaxeBot"}
    var update_id : Int;
    var dispatcher : Dispatcher;

    public function new( token : String )
    {
        this.token = token;
        this.api = new TelegramBotAPI(token);

        this.update_id = 0;
    }

    private static function keepThread( ) : Void
    {
        // hl.Gc.blocking(true);
        while (true)
            Sys.sleep(0.1);
        // hl.Gc.blocking(false);
    }
    public function longPoll( ) : Void
    {
        MainLoop.addThread(keepThread);

        api.getMe(function(r : Response<User>)
        {
            if (r.ok)
            {
                this.bot = r.result;
                MainLoop.runInMainThread(update);
            }
            else
            {
                error('[onGetMe]: (${r.error_code}) ${r.description}');
                Sys.exit(1);
            }
        });
    }

    function update( ) : Void
    {
        var params : GetUpdatesParams = {
            limit: 30,
            timeout: 60,
            offset: update_id + 1,
        };

        api.getUpdates(params, onUpdate);
    }
    function onUpdate( r : Response<Array<Update>> ) : Void
    {
        #if debug trace('[onUpdate] ${r.ok}'); #end
        
        if (r.ok) for (u in r.result)
        {
            if (update_id < u.update_id)
                update_id = u.update_id;

            MainLoop.runInMainThread(onUpdateMessage.bind(u));
        }
        else
        {
            error('[onUpdate]: (${r.error_code}) ${r.description}');
            //TODO: add sleep time or exit?
        }
        
        MainLoop.runInMainThread(update);
    }
    function onUpdateMessage( u : Update ) : Void
    {
        dispatcher.proceed(u);
    }

    static function error( s : String ) : Void Sys.stderr().writeString('[error]$s\n');

    public dynamic function setup( dapi : DispatcherApi ) : Void
    {
        this.dispatcher = new Dispatcher(api, dapi);
    }
}