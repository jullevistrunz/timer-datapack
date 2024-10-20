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

#### Change design

There are three built-in designs available for you to choose. To create your own read [the Design Creator guide](#design-creator)

- Change design: `/data modify storage timer:settings display.design set value "<design>"`

| | `default` | `detailed` | `minimal` |
| - | - | - | - |
| Show days enabled | ![image](https://github.com/user-attachments/assets/a6500d2d-1f14-414c-881c-9e31133f4266) | ![image](https://github.com/user-attachments/assets/2aaae234-c280-4972-94a2-28d0af9ddb66) | ![image](https://github.com/user-attachments/assets/e7227732-78ac-43fb-b5db-769fb2c86173) |
| Show days disabled | ![image](https://github.com/user-attachments/assets/3ef260b0-4105-4a30-9330-a91536042759) | ![image](https://github.com/user-attachments/assets/c9bc7029-4df1-440a-ac14-5e18f2bba890) | ![image](https://github.com/user-attachments/assets/396b7b4e-9b19-4066-b844-a99af1ac7eed) |

#### Change color

You can change the main and accent color. Default for main is white and red for accent. Hex codes can be used, e.g. "#FF0000"

- Change main color: `/data modify storage timer:settings display.mainColor set value "<color>"`
- Change accent color: `/data modify storage timer:settings display.accentColor set value "<color>"`

#### Change gamemode on timer resume/stop

If enabled, when stopping the timer, every player will go into spectator mode. When the timer is resumed they'll change to survival.

- Enable: `/scoreboard players set #timer timer_changeGamemode 1`
- Disable: `/scoreboard players set #timer timer_changeGamemode 0`

#### Show days

When enabled hours will reset at 24 and increment the day counter. If not hours will go up infinitely. Do not enable/disable after one day has passed.

- Enable: `/scoreboard players set #timer timer_enableDays 1`
- Disable: `/scoreboard players set #timer timer_enableDays 0`

> ![image](https://github.com/user-attachments/assets/c523ba8d-8ceb-464a-bf48-3d080036dc96)
> ![image](https://github.com/user-attachments/assets/83aa52fd-d207-45e5-9c65-33f92f21e9ac)

#### Italic text when stopped

Make the text italic when the timer is stopped.

- Enable: `/data modify storage timer:settings display.stoppedItalic set value "true"`
- Disable: `/data modify storage timer:settings display.stoppedItalic set value "false""`

#### Customizable stopped text

Change the text that will appear when the timer is stopped: `/data modify storage timer:settings display.stoppedText set value "Custom text "`, default is `">> Timer stopped at "`

> ![image](https://github.com/user-attachments/assets/278b1e59-24f4-4542-bd81-b7fde1b4f81c)
> ![image](https://github.com/user-attachments/assets/321bc0e7-8488-4f50-9e13-0ae97b6c632b)

## Design Creator

1. Go to https://jullevistrunz.github.io/timer-datapack/
2. At the top you can edit the preview time and your [settings](#settings). You'll set them in-game at the end of this tutorial. ![image](https://github.com/user-attachments/assets/fe32da41-621b-46f1-9474-239acea6234d)
3. There are 4 states a design can be in. You can edit each individually. `{d}` is the placeholder for the elapsed days, `{h}` for hours and so on. `{stoppedText}` is the placeholder for the text defined [here](#customizable-stopped-text). When your happy with your creation click "Preview". ![image](https://github.com/user-attachments/assets/71b01c99-09d0-44e9-9567-adc07fe5482a)
4. Now choose a name for your design. Note that upper-case letters will be lower-cased and spaces will be removed. ![image](https://github.com/user-attachments/assets/95d29b65-5b82-404c-9101-c862b0fe4be7)
5. Click "Export". Save the file. Now move it to: `<world folder>/datapacks/timer-datapack/data/timer/function/design`. You might have to extract your `timer-datapck.zip` beforehand, if you haven't already. If this is your first design, your design folder should look like this: ![image](https://github.com/user-attachments/assets/f132ed7b-949a-47e7-a9d2-df3b16d7ac56)
6. Once in game run these commands, to enable your design, set your custom colors and the custom stopped text. Click a command to copy it to your clipboard. ![image](https://github.com/user-attachments/assets/4c1b8a3d-b8e3-47ab-a2ba-1b15cbced66e)
