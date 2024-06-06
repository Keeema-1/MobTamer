execute if score $mt.sendcommandfeedback mt.score matches 1.. run gamerule sendCommandFeedback true
execute unless score $mt.sendcommandfeedback mt.score matches 1.. run gamerule sendCommandFeedback false
scoreboard players reset $mt.sendcommandfeedback mt.score
