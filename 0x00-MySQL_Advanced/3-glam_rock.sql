-- SQL script that lists all bands with Glam rock as their main style, ranked by their longevity
-- Requirements:
-- Column names must be: band_name and lifespan (in years)
-- Use attributes formed and split for computing the lifespan
-- Hint: SELECT band_name, (IFNULL(split, YEAR(CURRENT_DATE())) - formed) AS lifespan
SELECT band_name, (IFNULL(split, '2022') - formed) AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
    ORDER BY lifespan DESC;
