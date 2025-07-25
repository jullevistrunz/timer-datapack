scoreboard objectives add timer_seconds1 dummy
scoreboard objectives add timer_seconds2 dummy
scoreboard objectives add timer_minutes1 dummy
scoreboard objectives add timer_minutes2 dummy
scoreboard objectives add timer_hours1 dummy
scoreboard objectives add timer_hours2 dummy
scoreboard objectives add timer_dayAdd dummy
scoreboard objectives add timer_days dummy
scoreboard objectives add timer_tick dummy
scoreboard objectives add timer_stop dummy

scoreboard objectives add timer_enableDays dummy
scoreboard objectives add timer_changeGamemode dummy

scoreboard objectives add hideTimer trigger

scoreboard players set #timer timer_tick 0

execute unless score #timer timer_enableDays matches 0..1 run scoreboard players set #timer timer_enableDays 1
execute unless score #timer timer_changeGamemode matches 0..1 run scoreboard players set #timer timer_changeGamemode 1

execute unless score #timer timer_seconds1 matches 0..10 run function timer:reset

execute unless data storage timer:settings display.mainColor run data modify storage timer:settings display.mainColor set value "white"
execute unless data storage timer:settings display.accentColor run data modify storage timer:settings display.accentColor set value "red"
execute unless data storage timer:settings display.stoppedItalic run data modify storage timer:settings display.stoppedItalic set value "true"
execute unless data storage timer:settings display.stoppedText run data modify storage timer:settings display.stoppedText set value ">> Timer stopped at "
execute unless data storage timer:settings display.design run data modify storage timer:settings display.design set value "default"
