# FreeStylers Messages

A lightweight SourceMod plugin for Counter-Strike: Source that displays rotating server announcements in chat.

## Features

- Four rotating chat announcements
- Configurable announcement interval
- Discord community promotion
- English messages
- Ignores bots

## Requirements

- Counter-Strike: Source
- SourceMod 1.12 or compatible version

## Installation

1. Compile `freestylers_messages.sp` using the SourceMod compiler.
2. Upload `freestylers_messages.smx` to `cstrike/addons/sourcemod/plugins/`.
3. Load the plugin using the server console:

   `sm plugins load freestylers_messages.smx`

## Configuration

The announcement interval is defined by `MESSAGE_INTERVAL` in the source code.

Default interval: 25 seconds.

Discord: https://discord.gg/Qd69fEzVX

## Author

FreeStylers Tr3nu



## Customization

Before using this plugin, customize it for your own server.

Open `freestylers_messages.sp` in a text editor and change the following settings:

### 1. Announcement interval

Find:

`#define MESSAGE_INTERVAL 25.0`

Change `25.0` to the interval you prefer, in seconds.

### 2. Chat messages

Edit the strings inside `char g_Messages[][]` to display your own announcements. You can use these messages to promote your community, server features, rules, website, or events.

### 3. Discord invite

Replace `discord.gg/Qd69fEzVX` with your own Discord invite link, or remove it if you do not use Discord.

### 4. Plugin information

You can change the plugin name, author, description, version, and URL in `public Plugin myinfo` to match your project.

### 5. Compile and install

After making your changes, compile the modified `.sp` file using the [SourceMod Compiler](https://www.sourcemod.net/compiler.php). Upload the resulting `.smx` file to:

`cstrike/addons/sourcemod/plugins/`

**Important:** Changes to the `.sp` source file do not affect an already compiled `.smx` file. Recompile the plugin after every source-code change.

## Example

You can replace the default FreeStylers messages with your own server name, announcements, and community links. No coding experience is required for basic text and interval changes.
