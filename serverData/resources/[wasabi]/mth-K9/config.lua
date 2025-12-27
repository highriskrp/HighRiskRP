Config = {}

Config.UseCommand = true -- If you want to use command to open the menu
Config.UseKeybind = false -- If you want to use keybind to open the menu (default keybind is O)

Config.AcePermissions = true -- If you want to use Ace Permissions

Config.Select = true -- true = select the target, false = auto target the player in front

-- List of jobs allowed to use the K9 menu
Config.AllowedJobs = { 'police' } -- Add more jobs as needed, e.g. { 'police', 'sheriff' }

-- You can configure the default keybinds here, these are changeable in the keybind options ingame
Config.Keybinds = {
    Menu = 'F9',
    Attack = 'H',
    Sit = 'L',
    Stay = 'Z',
    Beg = 'K',
    Paw = 'J',
    Follow = 'G',
    Bark = 'M',
    Lay = 'N',
    EnterExitVehicle = 'U',
    Dismiss = 'I',
}