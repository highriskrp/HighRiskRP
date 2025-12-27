## Install
1. Put the images in the `img` folder into `qb-inventory/html/images`.
2. Add the following code to your `qb-core/shared/items.lua`
item: 
    duffle1        = { name = 'duffle1', label = 'small backpack', weight = 1000, type = 'item', image = 'duffle1.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Stylish backpack' },
    duffle2        = { name = 'duffle2', label = 'travel bag', weight = 1000, type = 'item', image = 'duffle2.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Stylish travel bag' },
    
3. Add `qb-backpack` to your resources and write startup items in server.cfg