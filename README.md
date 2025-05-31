# DeathCroodsDatapack
A Minecraft datapack that can broadcast dead player‘s coordinate.
version>=1.9

+ world/
  + datapacks/
    + death_coordinates/
      + pack.mcmeta
      + data/
        + death_coords/
          + functions/
            + load.mcfunction
            + main.mcfunction
            + send_death_location.mcfunction
        + minecraft/
          + tags/
            + functions/
              + load.json
