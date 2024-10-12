$execute if score #timer timer_stop matches 0 if score #timer timer_enableDays matches 0 run title @a actionbar ["",{"score":{"name":"#timer","objective":"timer_hours2"},"color":"$(accentColor)"},{"score":{"name":"#timer","objective":"timer_hours1"},"color":"$(accentColor)"},{"text":":","color":"$(mainColor)"},{"score":{"name":"#timer","objective":"timer_minutes2"},"color":"$(accentColor)"},{"score":{"name":"#timer","objective":"timer_minutes1"},"color":"$(accentColor)"},{"text":":","color":"$(mainColor)"},{"score":{"name":"#timer","objective":"timer_seconds2"},"color":"$(accentColor)"},{"score":{"name":"#timer","objective":"timer_seconds1"},"color":"$(accentColor)"}]

$execute if score #timer timer_stop matches 0 if score #timer timer_enableDays matches 1 run title @a actionbar ["",{"text":"Day: ","color":"$(mainColor)"},{"score":{"name":"#timer","objective":"timer_days"},"color":"$(accentColor)"},{"text":" | ","color":"$(mainColor)"},{"score":{"name":"#timer","objective":"timer_hours2"},"color":"$(accentColor)"},{"score":{"name":"#timer","objective":"timer_hours1"},"color":"$(accentColor)"},{"text":":","color":"$(mainColor)"},{"score":{"name":"#timer","objective":"timer_minutes2"},"color":"$(accentColor)"},{"score":{"name":"#timer","objective":"timer_minutes1"},"color":"$(accentColor)"},{"text":":","color":"$(mainColor)"},{"score":{"name":"#timer","objective":"timer_seconds2"},"color":"$(accentColor)"},{"score":{"name":"#timer","objective":"timer_seconds1"},"color":"$(accentColor)"}]

$execute if score #timer timer_stop matches 1 if score #timer timer_enableDays matches 0 run title @a actionbar ["",{"text":"$(stoppedText)","color":"$(mainColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_hours2"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_hours1"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"text":":","color":"$(mainColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_minutes2"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_minutes1"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"text":":","color":"$(mainColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_seconds2"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_seconds1"},"color":"$(accentColor)","italic":$(stoppedItalic)}]

$execute if score #timer timer_stop matches 1 if score #timer timer_enableDays matches 1 run title @a actionbar ["",{"text":"$(stoppedText)Day: ","color":"$(mainColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_days"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"text":" | ","color":"$(mainColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_hours2"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_hours1"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"text":":","color":"$(mainColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_minutes2"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_minutes1"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"text":":","color":"$(mainColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_seconds2"},"color":"$(accentColor)","italic":$(stoppedItalic)},{"score":{"name":"#timer","objective":"timer_seconds1"},"color":"$(accentColor)","italic":$(stoppedItalic)}]