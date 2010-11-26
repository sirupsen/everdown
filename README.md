# Everdown

I'll start to work on this once I have time, although there are some things I want to research on first:

* Possible to ditch Evernote, and have some open-source OCR instead of Evernote's and keep it all in files in Dropbox?

You like editing your notes in good ol' Vim, but too you'd like to have them all indexed up by Evernote and available everywhere: on the mighty internet, you're fancy devices, and whatever.

Here's Everdown for you. It runs in the background and keeps a file tree up to date (buzz word: sync) with Evernote.

Oh and this *doesn't* work *yet*

## Installation

Sounds awesome, well how do I get this gem?

Good question, as with all good questions it can be answered with one line of bash:

    $ gem install everdown

## Usage

To deamonize Everdown for the grater awesome sync functionality, run it with:

    $ everdown -d

You might as well add this line to a file that get runs at every boot.

## Links

* [Evernote Ruby Library][erl]
* [Evernote API Documentation][ead]

## Wishlist

* Well, make this idea come to life
* The mobile Evernote clients don't support rich text, idea: Write notes on these devices in Markdown, tag these raw notes with `convert` and let Everdown take care of it!
* **Name:** Everdown? Everbox (as in: Dropbox for Evernote (for hackers))

[erl]: https://github.com/cgs/evernote
[ead]: http://www.evernote.com/about/developer/api/evernote-api.htm
