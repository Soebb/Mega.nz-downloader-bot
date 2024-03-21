import os
from pyrogram import Client, filters
from pyrogram.types import InlineKeyboardMarkup, InlineKeyboardButton
from mega import Mega
mega = Mega()

Bot = Client(
    "megaBot",
    bot_token = os.environ["BOT_TOKEN"],
    api_id = int(os.environ["API_ID"]),
    api_hash = os.environ["API_HASH"]
)


START_TXT = """
Hi {}, I'm Mega.nz downloader bot.

Send a mega file url to starting.."
"""

START_BTN = InlineKeyboardMarkup(
        [[
        InlineKeyboardButton('Source Code', url='https://github.com/soebb'),
        ]]
    )


@Bot.on_message(filters.command(["start"]))
async def start(bot, update):
    text = START_TXT.format(update.from_user.mention)
    reply_markup = START_BTN
    await update.reply_text(
        text=text,
        disable_web_page_preview=True,
        reply_markup=reply_markup
    )


@Bot.on_message(filters.private & filters.text)
async def megadl(_, m):
    url = m.text
    msg = await m.reply("Processing..")
    m = mega.login()
    output_ = m.download_url(url)
    await m.reply_document(output_)
    await msg.delete()
    os.remove(output_)


Bot.run()
