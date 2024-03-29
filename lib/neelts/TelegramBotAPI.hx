package neelts;

#if macro
import haxe.macro.Expr;
import haxe.macro.Context;
#end

import haxe.extern.EitherType;

import sys.thread.Thread;
import haxe.Http;
import haxe.Json;

using neelts.TelegramBotAPI;

class TelegramBotAPI {

	private static inline var URL:String = "https://api.telegram.org";
	private static inline var JSON:String = "application/json";
	private static inline var CONTENT_TYPE:String = "Content-Type";

	private var url:String;
	public function new(token:String) url = '$URL/bot$token/';

	public function getUpdates(params:GetUpdatesParams, ?onComplete:Response<Array<Update>>->Void):Void call(methodName(), params, onComplete);
	public function setWebhook(params:SetWebhookParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function deleteWebhook(?onComplete:Response<Bool>->Void):Void call(methodName(), null, onComplete);
	public function getWebhookInfo(?onComplete:Response<WebhookInfo>->Void):Void call(methodName(), null, onComplete);
	public function getMe(?onComplete:Response<User>->Void):Void call(methodName(), null, onComplete);
	public function sendMessage(params:SendMessageParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function forwardMessage(params:ForwardMessageParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendPhoto(params:SendPhotoParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendAudio(params:SendAudioParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendDocument(params:SendDocumentParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendVideo(params:SendVideoParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendAnimation(params:SendAnimationParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendVoice(params:SendVoiceParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendVideoNote(params:SendVideoNoteParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendMediaGroup(params:SendMediaGroupParams, ?onComplete:Response<Array<Message>>->Void):Void call(methodName(), params, onComplete);
	public function sendLocation(params:SendLocationParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function editMessageLiveLocation(params:EditMessageLiveLocationParams, ?onComplete:Response<EitherType<Message, Bool>>->Void):Void call(methodName(), params, onComplete);
	public function stopMessageLiveLocation(params:StopMessageLiveLocationParams, ?onComplete:Response<EitherType<Message, Bool>>->Void):Void call(methodName(), params, onComplete);
	public function sendVenue(params:SendVenueParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendContact(params:SendContactParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendPoll(params:SendPollParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function sendChatAction(params:SendChatActionParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function getUserProfilePhotos(params:GetUserProfilePhotosParams, ?onComplete:Response<UserProfilePhotos>->Void):Void call(methodName(), params, onComplete);
	public function getFile(params:GetFileParams, ?onComplete:Response<File>->Void):Void call(methodName(), params, onComplete);
	public function kickChatMember(params:KickChatMemberParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function unbanChatMember(params:UnbanChatMemberParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function restrictChatMember(params:RestrictChatMemberParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function promoteChatMember(params:PromoteChatMemberParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function setChatPermissions(params:SetChatPermissionsParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function exportChatInviteLink(params:ExportChatInviteLinkParams, ?onComplete:Response<String>->Void):Void call(methodName(), params, onComplete);
	public function setChatPhoto(params:SetChatPhotoParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function deleteChatPhoto(params:DeleteChatPhotoParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function setChatTitle(params:SetChatTitleParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function setChatDescription(params:SetChatDescriptionParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function pinChatMessage(params:PinChatMessageParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function unpinChatMessage(params:UnpinChatMessageParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function leaveChat(params:LeaveChatParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function getChat(params:GetChatParams, ?onComplete:Response<Chat>->Void):Void call(methodName(), params, onComplete);
	public function getChatAdministrators(params:GetChatAdministratorsParams, ?onComplete:Response<Array<ChatMember>>->Void):Void call(methodName(), params, onComplete);
	public function getChatMembersCount(params:GetChatMembersCountParams, ?onComplete:Response<Int>->Void):Void call(methodName(), params, onComplete);
	public function getChatMember(params:GetChatMemberParams, ?onComplete:Response<ChatMember>->Void):Void call(methodName(), params, onComplete);
	public function setChatStickerSet(params:SetChatStickerSetParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function deleteChatStickerSet(params:DeleteChatStickerSetParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function answerCallbackQuery(params:AnswerCallbackQueryParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function editMessageText(params:EditMessageTextParams, ?onComplete:Response<EitherType<Message, Bool>>->Void):Void call(methodName(), params, onComplete);
	public function editMessageCaption(params:EditMessageCaptionParams, ?onComplete:Response<EitherType<Message, Bool>>->Void):Void call(methodName(), params, onComplete);
	public function editMessageMedia(params:EditMessageMediaParams, ?onComplete:Response<EitherType<EitherType<Void, Message>, Bool>>->Void):Void call(methodName(), params, onComplete);
	public function editMessageReplyMarkup(params:EditMessageReplyMarkupParams, ?onComplete:Response<EitherType<Message, Bool>>->Void):Void call(methodName(), params, onComplete);
	public function stopPoll(params:StopPollParams, ?onComplete:Response<Poll>->Void):Void call(methodName(), params, onComplete);
	public function deleteMessage(params:DeleteMessageParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function sendSticker(params:SendStickerParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function getStickerSet(params:GetStickerSetParams, ?onComplete:Response<StickerSet>->Void):Void call(methodName(), params, onComplete);
	public function uploadStickerFile(params:UploadStickerFileParams, ?onComplete:Response<File>->Void):Void call(methodName(), params, onComplete);
	public function createNewStickerSet(params:CreateNewStickerSetParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function addStickerToSet(params:AddStickerToSetParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function setStickerPositionInSet(params:SetStickerPositionInSetParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function deleteStickerFromSet(params:DeleteStickerFromSetParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function answerInlineQuery(params:AnswerInlineQueryParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function sendInvoice(params:SendInvoiceParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function answerShippingQuery(params:AnswerShippingQueryParams, ?onComplete:Response<Update>->Void):Void call(methodName(), params, onComplete);
	public function answerPreCheckoutQuery(params:AnswerPreCheckoutQueryParams, ?onComplete:Response<Update>->Void):Void call(methodName(), params, onComplete);
	public function setPassportDataErrors(params:SetPassportDataErrorsParams, ?onComplete:Response<Bool>->Void):Void call(methodName(), params, onComplete);
	public function sendGame(params:SendGameParams, ?onComplete:Response<Message>->Void):Void call(methodName(), params, onComplete);
	public function setGameScore(params:SetGameScoreParams, ?onComplete:Response<EitherType<Message, Bool>>->Void):Void call(methodName(), params, onComplete);
	public function getGameHighScores(params:GetGameHighScoresParams, ?onComplete:Response<Array<GameHighScore>>->Void):Void call(methodName(), params, onComplete);
	
	private function call<P, T, R:Response<T>>( method : String, params : P = null, onComplete : R -> Void = null ) : Void
	{
		var message:Call<P, R> = {
			method:method,
			params:params,
			onComplete:onComplete
		};
		haxe.MainLoop.addThread(callAsync.bind(message));
	}

	private function callAsync<P, T, R:Response<T>>( message : Call<P, R> ) : Void
	{
		var http:Http = new Http(url + message.method);
		if (message.method == "getUpdates")
		{
			var p : GetUpdatesParams = cast message.params;
			http.cnxTimeout = p.timeout != null ? p.timeout * 2 : 60.0;
		}

		try
		{
			http.addHeader(CONTENT_TYPE, JSON);
			if (message.params != null)
			{
				var json = Json.stringify(message.params);
			#if debug trace(json); #end
				http.setPostData(json);
			}
			
			if (message.onComplete != null) http.onData = http.onError = function(_):Void
			{
			#if debug trace(http.responseData); #end
				message.onComplete(Json.parse(http.responseData));
			}
			http.request(true);
		}
		catch( e : Dynamic )
		{
			#if debug trace(e); #end
			haxe.MainLoop.addThread(callAsync.bind(message));
		}
	}

	macro public static function methodName( ) : ExprOf<String> return macro $v{Context.getLocalMethod()};
}

typedef Call<P, R> = {
	var method:String;
	var params:P;
	var onComplete:R -> Void;
}

typedef Response<T> = {
	var ok:Bool;
	@:optional var result:T;
	@:optional var error_code:Int;
	@:optional var description:String;
}

/**
*
*	Method params
*
**/

typedef GetUpdatesParams = {

	@:optional var offset:Int;
	@:optional var limit:Int;
	@:optional var timeout:Int;
	@:optional var allowed_updates:Array<String>;
	
}

typedef SetWebhookParams = {

	var url:String;
	@:optional var certificate:InputFile;
	@:optional var max_connections:Int;
	@:optional var allowed_updates:Array<String>;
	
}







typedef SendMessageParams = {

	var chat_id:EitherType<Float, EitherType<Int, String>>;
	var text:String;
	@:optional var parse_mode:String;
	@:optional var disable_web_page_preview:Bool;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef ForwardMessageParams = {

	var chat_id:EitherType<Int, String>;
	var from_chat_id:EitherType<Int, String>;
	@:optional var disable_notification:Bool;
	var message_id:Int;
	
}

typedef SendPhotoParams = {

	var chat_id:EitherType<Int, String>;
	var photo:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendAudioParams = {

	var chat_id:EitherType<Int, String>;
	var audio:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var duration:Int;
	@:optional var performer:String;
	@:optional var title:String;
	@:optional var thumb:EitherType<InputFile, String>;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendDocumentParams = {

	var chat_id:EitherType<Int, String>;
	var document:EitherType<InputFile, String>;
	@:optional var thumb:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendVideoParams = {

	var chat_id:EitherType<Int, String>;
	var video:EitherType<InputFile, String>;
	@:optional var duration:Int;
	@:optional var width:Int;
	@:optional var height:Int;
	@:optional var thumb:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var supports_streaming:Bool;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendAnimationParams = {

	var chat_id:EitherType<Int, String>;
	var animation:EitherType<InputFile, String>;
	@:optional var duration:Int;
	@:optional var width:Int;
	@:optional var height:Int;
	@:optional var thumb:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendVoiceParams = {

	var chat_id:EitherType<Int, String>;
	var voice:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var duration:Int;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendVideoNoteParams = {

	var chat_id:EitherType<Int, String>;
	var video_note:EitherType<InputFile, String>;
	@:optional var duration:Int;
	@:optional var length:Int;
	@:optional var thumb:EitherType<InputFile, String>;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendMediaGroupParams = {

	var chat_id:EitherType<Int, String>;
	var media:Array<InputMediaVideo>;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	
}

typedef SendLocationParams = {

	var chat_id:EitherType<Int, String>;
	var latitude:Float;
	var longitude:Float;
	@:optional var live_period:Int;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef EditMessageLiveLocationParams = {

	@:optional var chat_id:EitherType<Int, String>;
	@:optional var message_id:Int;
	@:optional var inline_message_id:String;
	var latitude:Float;
	var longitude:Float;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef StopMessageLiveLocationParams = {

	@:optional var chat_id:EitherType<Int, String>;
	@:optional var message_id:Int;
	@:optional var inline_message_id:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef SendVenueParams = {

	var chat_id:EitherType<Int, String>;
	var latitude:Float;
	var longitude:Float;
	var title:String;
	var address:String;
	@:optional var foursquare_id:String;
	@:optional var foursquare_type:String;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendContactParams = {

	var chat_id:EitherType<Int, String>;
	var phone_number:String;
	var first_name:String;
	@:optional var last_name:String;
	@:optional var vcard:String;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendPollParams = {

	var chat_id:EitherType<Int, String>;
	var question:String;
	var options:Array<String>;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef SendChatActionParams = {

	var chat_id:EitherType<Int, String>;
	var action:String;
	
}

typedef GetUserProfilePhotosParams = {

	var user_id:Int;
	@:optional var offset:Int;
	@:optional var limit:Int;
	
}

typedef GetFileParams = {

	var file_id:String;
	
}

typedef KickChatMemberParams = {

	var chat_id:EitherType<Int, String>;
	var user_id:Int;
	@:optional var until_date:Int;
	
}

typedef UnbanChatMemberParams = {

	var chat_id:EitherType<Int, String>;
	var user_id:Int;
	
}

typedef RestrictChatMemberParams = {

	var chat_id:EitherType<Int, String>;
	var user_id:Int;
	var permissions:ChatPermissions;
	@:optional var until_date:Int;
	
}

typedef PromoteChatMemberParams = {

	var chat_id:EitherType<Int, String>;
	var user_id:Int;
	@:optional var can_change_info:Bool;
	@:optional var can_post_messages:Bool;
	@:optional var can_edit_messages:Bool;
	@:optional var can_delete_messages:Bool;
	@:optional var can_invite_users:Bool;
	@:optional var can_restrict_members:Bool;
	@:optional var can_pin_messages:Bool;
	@:optional var can_promote_members:Bool;
	
}

typedef SetChatPermissionsParams = {

	var chat_id:EitherType<Int, String>;
	var permissions:ChatPermissions;
	
}

typedef ExportChatInviteLinkParams = {

	var chat_id:EitherType<Int, String>;
	
}

typedef SetChatPhotoParams = {

	var chat_id:EitherType<Int, String>;
	var photo:InputFile;
	
}

typedef DeleteChatPhotoParams = {

	var chat_id:EitherType<Int, String>;
	
}

typedef SetChatTitleParams = {

	var chat_id:EitherType<Int, String>;
	var title:String;
	
}

typedef SetChatDescriptionParams = {

	var chat_id:EitherType<Int, String>;
	@:optional var description:String;
	
}

typedef PinChatMessageParams = {

	var chat_id:EitherType<Int, String>;
	var message_id:Int;
	@:optional var disable_notification:Bool;
	
}

typedef UnpinChatMessageParams = {

	var chat_id:EitherType<Int, String>;
	
}

typedef LeaveChatParams = {

	var chat_id:EitherType<Int, String>;
	
}

typedef GetChatParams = {

	var chat_id:EitherType<Int, String>;
	
}

typedef GetChatAdministratorsParams = {

	var chat_id:EitherType<Int, String>;
	
}

typedef GetChatMembersCountParams = {

	var chat_id:EitherType<Int, String>;
	
}

typedef GetChatMemberParams = {

	var chat_id:EitherType<Int, String>;
	var user_id:Int;
	
}

typedef SetChatStickerSetParams = {

	var chat_id:EitherType<Int, String>;
	var sticker_set_name:String;
	
}

typedef DeleteChatStickerSetParams = {

	var chat_id:EitherType<Int, String>;
	
}

typedef AnswerCallbackQueryParams = {

	var callback_query_id:String;
	@:optional var text:String;
	@:optional var show_alert:Bool;
	@:optional var url:String;
	@:optional var cache_time:Int;
	
}

typedef EditMessageTextParams = {

	@:optional var chat_id:EitherType<Int, String>;
	@:optional var message_id:Int;
	@:optional var inline_message_id:String;
	var text:String;
	@:optional var parse_mode:String;
	@:optional var disable_web_page_preview:Bool;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef EditMessageCaptionParams = {

	@:optional var chat_id:EitherType<Int, String>;
	@:optional var message_id:Int;
	@:optional var inline_message_id:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef EditMessageMediaParams = {

	@:optional var chat_id:EitherType<Int, String>;
	@:optional var message_id:Int;
	@:optional var inline_message_id:String;
	var media:InputMedia;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef EditMessageReplyMarkupParams = {

	@:optional var chat_id:EitherType<Int, String>;
	@:optional var message_id:Int;
	@:optional var inline_message_id:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef StopPollParams = {

	var chat_id:EitherType<Int, String>;
	var message_id:Int;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef DeleteMessageParams = {

	var chat_id:EitherType<Int, String>;
	var message_id:Int;
	
}

typedef SendStickerParams = {

	var chat_id:EitherType<Int, String>;
	var sticker:EitherType<InputFile, String>;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:EitherType<EitherType<EitherType<InlineKeyboardMarkup, ReplyKeyboardMarkup>, ReplyKeyboardRemove>, ForceReply>;
	
}

typedef GetStickerSetParams = {

	var name:String;
	
}

typedef UploadStickerFileParams = {

	var user_id:Int;
	var png_sticker:InputFile;
	
}

typedef CreateNewStickerSetParams = {

	var user_id:Int;
	var name:String;
	var title:String;
	var png_sticker:EitherType<InputFile, String>;
	var emojis:String;
	@:optional var contains_masks:Bool;
	@:optional var mask_position:MaskPosition;
	
}

typedef AddStickerToSetParams = {

	var user_id:Int;
	var name:String;
	var png_sticker:EitherType<InputFile, String>;
	var emojis:String;
	@:optional var mask_position:MaskPosition;
	
}

typedef SetStickerPositionInSetParams = {

	var sticker:String;
	var position:Int;
	
}

typedef DeleteStickerFromSetParams = {

	var sticker:String;
	
}

typedef AnswerInlineQueryParams = {

	var inline_query_id:String;
	var results:Array<InlineQueryResult>;
	@:optional var cache_time:Int;
	@:optional var is_personal:Bool;
	@:optional var next_offset:String;
	@:optional var switch_pm_text:String;
	@:optional var switch_pm_parameter:String;
	
}

typedef SendInvoiceParams = {

	var chat_id:Int;
	var title:String;
	var description:String;
	var payload:String;
	var provider_token:String;
	var start_parameter:String;
	var currency:String;
	var prices:Array<LabeledPrice>;
	@:optional var provider_data:String;
	@:optional var photo_url:String;
	@:optional var photo_size:Int;
	@:optional var photo_width:Int;
	@:optional var photo_height:Int;
	@:optional var need_name:Bool;
	@:optional var need_phone_number:Bool;
	@:optional var need_email:Bool;
	@:optional var need_shipping_address:Bool;
	@:optional var send_phone_number_to_provider:Bool;
	@:optional var send_email_to_provider:Bool;
	@:optional var is_flexible:Bool;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef AnswerShippingQueryParams = {

	var shipping_query_id:String;
	var ok:Bool;
	@:optional var shipping_options:Array<ShippingOption>;
	@:optional var error_message:String;
	
}

typedef AnswerPreCheckoutQueryParams = {

	var pre_checkout_query_id:String;
	var ok:Bool;
	@:optional var error_message:String;
	
}

typedef SetPassportDataErrorsParams = {

	var user_id:Int;
	var errors:Array<PassportElementError>;
	
}

typedef SendGameParams = {

	var chat_id:Int;
	var game_short_name:String;
	@:optional var disable_notification:Bool;
	@:optional var reply_to_message_id:Int;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef SetGameScoreParams = {

	var user_id:Int;
	var score:Int;
	@:optional var force:Bool;
	@:optional var disable_edit_message:Bool;
	@:optional var chat_id:Int;
	@:optional var message_id:Int;
	@:optional var inline_message_id:String;
	
}

typedef GetGameHighScoresParams = {

	var user_id:Int;
	@:optional var chat_id:Int;
	@:optional var message_id:Int;
	@:optional var inline_message_id:String;
	
}

/**
*
*	Types
*
**/

typedef Update = {

	var update_id:Int;
	@:optional var message:Message;
	@:optional var edited_message:Message;
	@:optional var channel_post:Message;
	@:optional var edited_channel_post:Message;
	@:optional var inline_query:InlineQuery;
	@:optional var chosen_inline_result:ChosenInlineResult;
	@:optional var callback_query:CallbackQuery;
	@:optional var shipping_query:ShippingQuery;
	@:optional var pre_checkout_query:PreCheckoutQuery;
	@:optional var poll:Poll;
	
}

typedef WebhookInfo = {

	var url:String;
	var has_custom_certificate:Bool;
	var pending_update_count:Int;
	@:optional var last_error_date:Int;
	@:optional var last_error_message:String;
	@:optional var max_connections:Int;
	@:optional var allowed_updates:Array<String>;
	
}

typedef User = {

	var id:Int;
	var is_bot:Bool;
	var first_name:String;
	@:optional var last_name:String;
	@:optional var username:String;
	@:optional var language_code:String;
	
}

typedef Chat = {

	var id:Float;
	var type:String;
	@:optional var title:String;
	@:optional var username:String;
	@:optional var first_name:String;
	@:optional var last_name:String;
	@:optional var photo:ChatPhoto;
	@:optional var description:String;
	@:optional var invite_link:String;
	@:optional var pinned_message:Message;
	@:optional var permissions:ChatPermissions;
	@:optional var sticker_set_name:String;
	@:optional var can_set_sticker_set:Bool;
	
}

typedef Message = {

	var message_id:Int;
	@:optional var from:User;
	var date:Int;
	var chat:Chat;
	@:optional var forward_from:User;
	@:optional var forward_from_chat:Chat;
	@:optional var forward_from_message_id:Int;
	@:optional var forward_signature:String;
	@:optional var forward_sender_name:String;
	@:optional var forward_date:Int;
	@:optional var reply_to_message:Message;
	@:optional var edit_date:Int;
	@:optional var media_group_id:String;
	@:optional var author_signature:String;
	@:optional var text:String;
	@:optional var entities:Array<MessageEntity>;
	@:optional var caption_entities:Array<MessageEntity>;
	@:optional var audio:Audio;
	@:optional var document:Document;
	@:optional var animation:Animation;
	@:optional var game:Game;
	@:optional var photo:Array<PhotoSize>;
	@:optional var sticker:Sticker;
	@:optional var video:Video;
	@:optional var voice:Voice;
	@:optional var video_note:VideoNote;
	@:optional var caption:String;
	@:optional var contact:Contact;
	@:optional var location:Location;
	@:optional var venue:Venue;
	@:optional var poll:Poll;
	@:optional var new_chat_members:Array<User>;
	@:optional var left_chat_member:User;
	@:optional var new_chat_title:String;
	@:optional var new_chat_photo:Array<PhotoSize>;
	@:optional var delete_chat_photo:Bool;
	@:optional var group_chat_created:Bool;
	@:optional var supergroup_chat_created:Bool;
	@:optional var channel_chat_created:Bool;
	@:optional var migrate_to_chat_id:Int;
	@:optional var migrate_from_chat_id:Int;
	@:optional var pinned_message:Message;
	@:optional var invoice:Invoice;
	@:optional var successful_payment:SuccessfulPayment;
	@:optional var connected_website:String;
	@:optional var passport_data:PassportData;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef MessageEntity = {

	var type:String;
	var offset:Int;
	var length:Int;
	@:optional var url:String;
	@:optional var user:User;
	
}

typedef PhotoSize = {

	var file_id:String;
	var width:Int;
	var height:Int;
	@:optional var file_size:Int;
	
}

typedef Audio = {

	var file_id:String;
	var duration:Int;
	@:optional var performer:String;
	@:optional var title:String;
	@:optional var mime_type:String;
	@:optional var file_size:Int;
	@:optional var thumb:PhotoSize;
	
}

typedef Document = {

	var file_id:String;
	@:optional var thumb:PhotoSize;
	@:optional var file_name:String;
	@:optional var mime_type:String;
	@:optional var file_size:Int;
	
}

typedef Video = {

	var file_id:String;
	var width:Int;
	var height:Int;
	var duration:Int;
	@:optional var thumb:PhotoSize;
	@:optional var mime_type:String;
	@:optional var file_size:Int;
	
}

typedef Animation = {

	var file_id:String;
	var width:Int;
	var height:Int;
	var duration:Int;
	@:optional var thumb:PhotoSize;
	@:optional var file_name:String;
	@:optional var mime_type:String;
	@:optional var file_size:Int;
	
}

typedef Voice = {

	var file_id:String;
	var duration:Int;
	@:optional var mime_type:String;
	@:optional var file_size:Int;
	
}

typedef VideoNote = {

	var file_id:String;
	var length:Int;
	var duration:Int;
	@:optional var thumb:PhotoSize;
	@:optional var file_size:Int;
	
}

typedef Contact = {

	var phone_number:String;
	var first_name:String;
	@:optional var last_name:String;
	@:optional var user_id:Int;
	@:optional var vcard:String;
	
}

typedef Location = {

	var longitude:Float;
	var latitude:Float;
	
}

typedef Venue = {

	var location:Location;
	var title:String;
	var address:String;
	@:optional var foursquare_id:String;
	@:optional var foursquare_type:String;
	
}

typedef PollOption = {

	var text:String;
	var voter_count:Int;
	
}

typedef Poll = {

	var id:String;
	var question:String;
	var options:Array<PollOption>;
	var is_closed:Bool;
	
}

typedef UserProfilePhotos = {

	var total_count:Int;
	var photos:Array<Array<PhotoSize>>;
	
}

typedef File = {

	var file_id:String;
	@:optional var file_size:Int;
	@:optional var file_path:String;
	
}

typedef ReplyKeyboardMarkup = {

	var keyboard:Array<Array<KeyboardButton>>;
	@:optional var resize_keyboard:Bool;
	@:optional var one_time_keyboard:Bool;
	@:optional var selective:Bool;
	
}

typedef KeyboardButton = {

	var text:String;
	@:optional var request_contact:Bool;
	@:optional var request_location:Bool;
	
}

typedef ReplyKeyboardRemove = {

	var remove_keyboard:Bool;
	@:optional var selective:Bool;
	
}

typedef InlineKeyboardMarkup = {

	var inline_keyboard:Array<Array<InlineKeyboardButton>>;
	
}

typedef InlineKeyboardButton = {

	var text:String;
	@:optional var url:String;
	@:optional var login_url:LoginUrl;
	@:optional var callback_data:String;
	@:optional var switch_inline_query:String;
	@:optional var switch_inline_query_current_chat:String;
	@:optional var callback_game:CallbackGame;
	@:optional var pay:Bool;
	
}

typedef LoginUrl = {

	var url:String;
	@:optional var forward_text:String;
	@:optional var bot_username:String;
	@:optional var request_write_access:Bool;
	
}

typedef CallbackQuery = {

	var id:String;
	var from:User;
	@:optional var message:Message;
	@:optional var inline_message_id:String;
	var chat_instance:String;
	@:optional var data:String;
	@:optional var game_short_name:String;
	
}

typedef ForceReply = {

	var force_reply:Bool;
	@:optional var selective:Bool;
	
}

typedef ChatPhoto = {

	var small_file_id:String;
	var big_file_id:String;
	
}

typedef ChatMember = {

	var user:User;
	var status:String;
	@:optional var until_date:Int;
	@:optional var can_be_edited:Bool;
	@:optional var can_post_messages:Bool;
	@:optional var can_edit_messages:Bool;
	@:optional var can_delete_messages:Bool;
	@:optional var can_restrict_members:Bool;
	@:optional var can_promote_members:Bool;
	@:optional var can_change_info:Bool;
	@:optional var can_invite_users:Bool;
	@:optional var can_pin_messages:Bool;
	@:optional var is_member:Bool;
	@:optional var can_send_messages:Bool;
	@:optional var can_send_media_messages:Bool;
	@:optional var can_send_polls:Bool;
	@:optional var can_send_other_messages:Bool;
	@:optional var can_add_web_page_previews:Bool;
	
}

typedef ChatPermissions = {

	@:optional var can_send_messages:Bool;
	@:optional var can_send_media_messages:Bool;
	@:optional var can_send_polls:Bool;
	@:optional var can_send_other_messages:Bool;
	@:optional var can_add_web_page_previews:Bool;
	@:optional var can_change_info:Bool;
	@:optional var can_invite_users:Bool;
	@:optional var can_pin_messages:Bool;
	
}

typedef ResponseParameters = {

	@:optional var migrate_to_chat_id:Int;
	@:optional var retry_after:Int;
	
}

typedef InputMedia = {

	
}

typedef InputMediaPhoto = {

	var type:String;
	var media:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	
}

typedef InputMediaVideo = {

	var type:String;
	var media:String;
	@:optional var thumb:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var width:Int;
	@:optional var height:Int;
	@:optional var duration:Int;
	@:optional var supports_streaming:Bool;
	
}

typedef InputMediaAnimation = {

	var type:String;
	var media:String;
	@:optional var thumb:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var width:Int;
	@:optional var height:Int;
	@:optional var duration:Int;
	
}

typedef InputMediaAudio = {

	var type:String;
	var media:String;
	@:optional var thumb:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var duration:Int;
	@:optional var performer:String;
	@:optional var title:String;
	
}

typedef InputMediaDocument = {

	var type:String;
	var media:String;
	@:optional var thumb:EitherType<InputFile, String>;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	
}

typedef InputFile = {

	
}

typedef Sticker = {

	var file_id:String;
	var width:Int;
	var height:Int;
	var is_animated:Bool;
	@:optional var thumb:PhotoSize;
	@:optional var emoji:String;
	@:optional var set_name:String;
	@:optional var mask_position:MaskPosition;
	@:optional var file_size:Int;
	
}

typedef StickerSet = {

	var name:String;
	var title:String;
	var is_animated:Bool;
	var contains_masks:Bool;
	var stickers:Array<Sticker>;
	
}

typedef MaskPosition = {

	var point:String;
	var x_shift:Float;
	var y_shift:Float;
	var scale:Float;
	
}

typedef InlineQuery = {

	var id:String;
	var from:User;
	@:optional var location:Location;
	var query:String;
	var offset:String;
	
}

typedef InlineQueryResult = {

	
}

typedef InlineQueryResultArticle = {

	var type:String;
	var id:String;
	var title:String;
	var input_message_content:InputMessageContent;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var url:String;
	@:optional var hide_url:Bool;
	@:optional var description:String;
	@:optional var thumb_url:String;
	@:optional var thumb_width:Int;
	@:optional var thumb_height:Int;
	
}

typedef InlineQueryResultPhoto = {

	var type:String;
	var id:String;
	var photo_url:String;
	var thumb_url:String;
	@:optional var photo_width:Int;
	@:optional var photo_height:Int;
	@:optional var title:String;
	@:optional var description:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultGif = {

	var type:String;
	var id:String;
	var gif_url:String;
	@:optional var gif_width:Int;
	@:optional var gif_height:Int;
	@:optional var gif_duration:Int;
	var thumb_url:String;
	@:optional var title:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultMpeg4Gif = {

	var type:String;
	var id:String;
	var mpeg4_url:String;
	@:optional var mpeg4_width:Int;
	@:optional var mpeg4_height:Int;
	@:optional var mpeg4_duration:Int;
	var thumb_url:String;
	@:optional var title:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultVideo = {

	var type:String;
	var id:String;
	var video_url:String;
	var mime_type:String;
	var thumb_url:String;
	var title:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var video_width:Int;
	@:optional var video_height:Int;
	@:optional var video_duration:Int;
	@:optional var description:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultAudio = {

	var type:String;
	var id:String;
	var audio_url:String;
	var title:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var performer:String;
	@:optional var audio_duration:Int;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultVoice = {

	var type:String;
	var id:String;
	var voice_url:String;
	var title:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var voice_duration:Int;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultDocument = {

	var type:String;
	var id:String;
	var title:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	var document_url:String;
	var mime_type:String;
	@:optional var description:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	@:optional var thumb_url:String;
	@:optional var thumb_width:Int;
	@:optional var thumb_height:Int;
	
}

typedef InlineQueryResultLocation = {

	var type:String;
	var id:String;
	var latitude:Float;
	var longitude:Float;
	var title:String;
	@:optional var live_period:Int;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	@:optional var thumb_url:String;
	@:optional var thumb_width:Int;
	@:optional var thumb_height:Int;
	
}

typedef InlineQueryResultVenue = {

	var type:String;
	var id:String;
	var latitude:Float;
	var longitude:Float;
	var title:String;
	var address:String;
	@:optional var foursquare_id:String;
	@:optional var foursquare_type:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	@:optional var thumb_url:String;
	@:optional var thumb_width:Int;
	@:optional var thumb_height:Int;
	
}

typedef InlineQueryResultContact = {

	var type:String;
	var id:String;
	var phone_number:String;
	var first_name:String;
	@:optional var last_name:String;
	@:optional var vcard:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	@:optional var thumb_url:String;
	@:optional var thumb_width:Int;
	@:optional var thumb_height:Int;
	
}

typedef InlineQueryResultGame = {

	var type:String;
	var id:String;
	var game_short_name:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	
}

typedef InlineQueryResultCachedPhoto = {

	var type:String;
	var id:String;
	var photo_file_id:String;
	@:optional var title:String;
	@:optional var description:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultCachedGif = {

	var type:String;
	var id:String;
	var gif_file_id:String;
	@:optional var title:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultCachedMpeg4Gif = {

	var type:String;
	var id:String;
	var mpeg4_file_id:String;
	@:optional var title:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultCachedSticker = {

	var type:String;
	var id:String;
	var sticker_file_id:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultCachedDocument = {

	var type:String;
	var id:String;
	var title:String;
	var document_file_id:String;
	@:optional var description:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultCachedVideo = {

	var type:String;
	var id:String;
	var video_file_id:String;
	var title:String;
	@:optional var description:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultCachedVoice = {

	var type:String;
	var id:String;
	var voice_file_id:String;
	var title:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InlineQueryResultCachedAudio = {

	var type:String;
	var id:String;
	var audio_file_id:String;
	@:optional var caption:String;
	@:optional var parse_mode:String;
	@:optional var reply_markup:InlineKeyboardMarkup;
	@:optional var input_message_content:InputMessageContent;
	
}

typedef InputMessageContent = {

	
}

typedef InputTextMessageContent = {

	var message_text:String;
	@:optional var parse_mode:String;
	@:optional var disable_web_page_preview:Bool;
	
}

typedef InputLocationMessageContent = {

	var latitude:Float;
	var longitude:Float;
	@:optional var live_period:Int;
	
}

typedef InputVenueMessageContent = {

	var latitude:Float;
	var longitude:Float;
	var title:String;
	var address:String;
	@:optional var foursquare_id:String;
	@:optional var foursquare_type:String;
	
}

typedef InputContactMessageContent = {

	var phone_number:String;
	var first_name:String;
	@:optional var last_name:String;
	@:optional var vcard:String;
	
}

typedef ChosenInlineResult = {

	var result_id:String;
	var from:User;
	@:optional var location:Location;
	@:optional var inline_message_id:String;
	var query:String;
	
}

typedef LabeledPrice = {

	var label:String;
	var amount:Int;
	
}

typedef Invoice = {

	var title:String;
	var description:String;
	var start_parameter:String;
	var currency:String;
	var total_amount:Int;
	
}

typedef ShippingAddress = {

	var country_code:String;
	var state:String;
	var city:String;
	var street_line1:String;
	var street_line2:String;
	var post_code:String;
	
}

typedef OrderInfo = {

	@:optional var name:String;
	@:optional var phone_number:String;
	@:optional var email:String;
	@:optional var shipping_address:ShippingAddress;
	
}

typedef ShippingOption = {

	var id:String;
	var title:String;
	var prices:Array<LabeledPrice>;
	
}

typedef SuccessfulPayment = {

	var currency:String;
	var total_amount:Int;
	var invoice_payload:String;
	@:optional var shipping_option_id:String;
	@:optional var order_info:OrderInfo;
	var telegram_payment_charge_id:String;
	var provider_payment_charge_id:String;
	
}

typedef ShippingQuery = {

	var id:String;
	var from:User;
	var invoice_payload:String;
	var shipping_address:ShippingAddress;
	
}

typedef PreCheckoutQuery = {

	var id:String;
	var from:User;
	var currency:String;
	var total_amount:Int;
	var invoice_payload:String;
	@:optional var shipping_option_id:String;
	@:optional var order_info:OrderInfo;
	
}

typedef PassportData = {

	var data:Array<EncryptedPassportElement>;
	var credentials:EncryptedCredentials;
	
}

typedef PassportFile = {

	var file_id:String;
	var file_size:Int;
	var file_date:Int;
	
}

typedef EncryptedPassportElement = {

	var type:String;
	@:optional var data:String;
	@:optional var phone_number:String;
	@:optional var email:String;
	@:optional var files:Array<PassportFile>;
	@:optional var front_side:PassportFile;
	@:optional var reverse_side:PassportFile;
	@:optional var selfie:PassportFile;
	@:optional var translation:Array<PassportFile>;
	var hash:String;
	
}

typedef EncryptedCredentials = {

	var data:String;
	var hash:String;
	var secret:String;
	
}

typedef PassportElementError = {

	
}

typedef PassportElementErrorDataField = {

	var source:String;
	var type:String;
	var field_name:String;
	var data_hash:String;
	var message:String;
	
}

typedef PassportElementErrorFrontSide = {

	var source:String;
	var type:String;
	var file_hash:String;
	var message:String;
	
}

typedef PassportElementErrorReverseSide = {

	var source:String;
	var type:String;
	var file_hash:String;
	var message:String;
	
}

typedef PassportElementErrorSelfie = {

	var source:String;
	var type:String;
	var file_hash:String;
	var message:String;
	
}

typedef PassportElementErrorFile = {

	var source:String;
	var type:String;
	var file_hash:String;
	var message:String;
	
}

typedef PassportElementErrorFiles = {

	var source:String;
	var type:String;
	var file_hashes:Array<String>;
	var message:String;
	
}

typedef PassportElementErrorTranslationFile = {

	var source:String;
	var type:String;
	var file_hash:String;
	var message:String;
	
}

typedef PassportElementErrorTranslationFiles = {

	var source:String;
	var type:String;
	var file_hashes:Array<String>;
	var message:String;
	
}

typedef PassportElementErrorUnspecified = {

	var source:String;
	var type:String;
	var element_hash:String;
	var message:String;
	
}

typedef Game = {

	var title:String;
	var description:String;
	var photo:Array<PhotoSize>;
	@:optional var text:String;
	@:optional var text_entities:Array<MessageEntity>;
	@:optional var animation:Animation;
	
}

typedef CallbackGame = {

	
}

typedef GameHighScore = {

	var position:Int;
	var user:User;
	var score:Int;
	
}