package tg;

import neelts.TelegramBotAPI;

abstract IncomeQuery(InlineQuery)
{
    public function new( q : InlineQuery )
    {
        this = q;
    }
}