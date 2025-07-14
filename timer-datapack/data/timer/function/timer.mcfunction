execute if entity @a run scoreboard players add #timer timer_tick 1

execute if score #timer timer_tick matches 20.. run scoreboard players add #timer timer_seconds1 1
execute if score #timer timer_tick matches 20.. run scoreboard players set #timer timer_tick 0

execute if score #timer timer_seconds1 matches 10.. run scoreboard players add #timer timer_seconds2 1
execute if score #timer timer_seconds1 matches 10.. run scoreboard players set #timer timer_seconds1 0

execute if score #timer timer_seconds2 matches 6.. run scoreboard players add #timer timer_minutes1 1
execute if score #timer timer_seconds2 matches 6.. run scoreboard players set #timer timer_seconds2 0

execute if score #timer timer_minutes1 matches 10.. run scoreboard players add #timer timer_minutes2 1
execute if score #timer timer_minutes1 matches 10.. run scoreboard players set #timer timer_minutes1 0

execute if score #timer timer_minutes2 matches 6.. run scoreboard players add #timer timer_hours1 1
execute if score #timer timer_minutes2 matches 6.. run scoreboard players set #timer timer_minutes2 0

execute if score #timer timer_hours1 matches 10.. run scoreboard players add #timer timer_hours2 1
execute if score #timer timer_hours1 matches 10.. run scoreboard players set #timer timer_hours1 0

execute if score #timer timer_enableDays matches 1 if score #timer timer_hours2 matches 2.. if score #timer timer_hours1 matches 4.. run scoreboard players set #timer timer_dayAdd 1
execute if score #timer timer_dayAdd matches 1 run scoreboard players add #timer timer_days 1
execute if score #timer timer_dayAdd matches 1 run scoreboard players set #timer timer_hours1 0
execute if score #timer timer_dayAdd matches 1 run scoreboard players set #timer timer_hours2 0
execute if score #timer timer_dayAdd matches 1 run scoreboard players set #timer timer_dayAdd 0