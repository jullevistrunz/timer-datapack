execute as @a[scores={hideTimer=0}] run function timer:display with storage timer:settings display

scoreboard players enable @a hideTimer

execute if score #timer timer_stop matches 0 run function timer:timer