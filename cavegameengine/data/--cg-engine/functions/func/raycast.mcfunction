
execute align xyz positioned ~0.5 ~-0.5 ~0.5 run particle flame ~ ~ ~ 0 0 0 0 1 force
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function --cg-engine:func/raycast
# This is what makes this function raycast.
# It runs this function over and over until a block is in the way.