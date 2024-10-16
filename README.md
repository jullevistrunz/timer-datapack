# Timer Datapack

A simple customizable timer datapack for singleplayer and multiplayer

## Installation

1. Download the latest version from https://github.com/jullevistrunz/timer-datapack/releases
2. Drag the ZIP into `<world folder>/datapacks`

## Usage

- Start/Resume: `/function timer:resume`
- Stop: `/function timer:stop`
- Reset: `/function timer:reset`
- Uninstall: `/function timer:uninstall`

## Settings

#### Change gamemode on timer resume/stop

If enabled, when stopping the timer, every player will go into spectator mode. When the timer is resumed they'll change to survival.

- Enable: `/scoreboard players set #timer timer_changeGamemode 1`
- Disable: `/scoreboard players set #timer timer_changeGamemode 0`

#### Show days

When enabled hours will reset at 24 and increment the day counter. If not hours will go up infinitely. Do not enable/disable after one day has passed.

- Enable: `/scoreboard players set #timer timer_enableDays 1`
- Disable: `/scoreboard players set #timer timer_enableDays 0`

> ![image](https://github.com/user-attachments/assets/c7c09f29-cbbf-405c-987f-8a9f840747f0)
> ![image](https://github.com/user-attachments/assets/3a741477-9013-42ae-af71-98b025e1764a)

#### Change color

You can change the main and accent color. Default for main is white and red for accent. Hex codes can be used, e.g. "#FF0000"

- Change main color: `/data modify storage timer:settings display.mainColor set value "<color>"`
- Change accent color: `/data modify storage timer:settings display.accentColor set value "<color>"`

#### Italic text when stopped

Make the text italic when the timer is stopped.

- Enable: `/data modify storage timer:settings display.stoppedItalic set value "true"`
- Disable: `/data modify storage timer:settings display.stoppedItalic set value "false""`

#### Customizable stopped text

Change the text that will appear when the timer is stopped: `/data modify storage timer:settings display.stoppedText set value "Custom text "`, default is `">> Timer stopped at "`

> ![image](https://github.com/user-attachments/assets/4d486dc2-bda5-43d2-a076-3f0969b86a09)
> ![image](https://github.com/user-attachments/assets/441811d7-fa52-431a-9c40-829a44165cad)

