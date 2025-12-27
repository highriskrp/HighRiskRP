config = {}

config.InvType = 'qb'                -- Inventory type (default 'qb')
config.InvName = 'qb-inventory'      -- Inventory resources (Currently only qb-inventory is supported!!!)

config.Bags = {
    -- Backpack1
    {
        ClothingMaleID = 82,         -- Male Clothing ID
        MaleTextureID = 0,           -- Texture
        ClothingFemaleID = 82,       -- Female Clothing ID
        FemaleTextureID = 0,         -- Texture
        InsideWeight = 50000,        -- weight
        Slots = 12,                  -- slots
        Item = 'duffle1'             -- item name
    },
    -- Backpack2
    {
        ClothingMaleID = 82, 
        MaleTextureID = 0,  
        ClothingFemaleID = 82, 
        FemaleTextureID = 6, 
        InsideWeight = 100000, 
        Slots = 24, 
        Item = 'duffle2'
    },
    -- You can add more...
}