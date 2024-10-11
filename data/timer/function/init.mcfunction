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

scoreboard players set #timer timer_tick 0

execute unless score #timer timer_enableDays matches 0..1 run scoreboard players set #timer timer_enableDays 1
execute unless score #timer timer_changeGamemode matches 0..1 run scoreboard players set #timer timer_changeGamemode 1

execute unless score #timer timer_seconds1 matches 0..10 run function timer:reset

execute unless data storage timer:settings display run data modify storage timer:settings display set value { "mainColor": "white", "accentColor": "red" }

tellraw @a ["",{"text":"Timer: "},{"text":"Reset","color":"blue","clickEvent":{"action":"run_command","value":"/function timer:reset"}},{"text":" ","color":"blue"},{"text":"Resume","color":"green","clickEvent":{"action":"run_command","value":"/function timer:resume"}},{"text":" ","color":"green"},{"text":"Stop","color":"red","clickEvent":{"action":"run_command","value":"/function timer:stop"}}]
