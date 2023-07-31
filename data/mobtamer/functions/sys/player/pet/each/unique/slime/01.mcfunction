
execute if score $mt.slime.size mt.score matches 1 positioned ~-2 ~-1 ~-2 if entity @p[gamemode=!creative,gamemode=!spectator,dx=3,dy=3,dz=3,limit=1] positioned ~2 ~1 ~2 facing entity @p[gamemode=!creative,gamemode=!spectator] feet run function mobtamer:sys/player/pet/each/unique/slime/010
execute if score $mt.slime.size mt.score matches 2 positioned ~-2.5 ~-1 ~-2.5 if entity @p[gamemode=!creative,gamemode=!spectator,dx=4,dy=4,dz=4,limit=1] positioned ~2.5 ~1 ~2.5 facing entity @p[gamemode=!creative,gamemode=!spectator] feet run function mobtamer:sys/player/pet/each/unique/slime/010
execute if score $mt.slime.size mt.score matches 3.. positioned ~-3 ~-1 ~-3 if entity @p[gamemode=!creative,gamemode=!spectator,dx=5,dy=5,dz=5,limit=1] positioned ~3 ~1 ~3 facing entity @p[gamemode=!creative,gamemode=!spectator] feet run function mobtamer:sys/player/pet/each/unique/slime/010

execute if score $mt.slime.size mt.score matches 1.. if entity @s[tag=!mt.wasOnGround] unless predicate mobtamer:targeting facing entity @e[type=#mobtamer:all_mobs,tag=!mt.same_team,predicate=mobtamer:targeting,distance=..8,sort=nearest,limit=1] feet run function mobtamer:sys/player/pet/each/unique/slime/011
