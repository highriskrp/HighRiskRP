Cfg = {}

--- ### TEBEX - MUSIC - PlayTube  ### ---
Cfg.TebexTransactionID = "tbx-1801925a60857-135762" --- GKSPhone TBX-ID Required for PlayTube and Music app. (Example : tbx-....)

--## Media Service Settings ## --
-- Write the media service name you will use ( fivemanage, fivemerr, gksmedia, customMedia)
Cfg.MediaService = "fivemerr"
-- Write the media service token you will use ( GKS Media Api Key, Fivemanage Token, Fivemerr Api Token)
Cfg.AuthTokenImage = "3b8e19586c55ae2bc8921d8a88420814"
Cfg.AuthTokenAudio = "3b8e19586c55ae2bc8921d8a88420814"
Cfg.AuthTokenVideo = "3b8e19586c55ae2bc8921d8a88420814"


-- ## LOG  ## --
Cfg.LogService = "discord" --- discord, fivemanage, fivemerr
Cfg.DiscordWebHooks = {
    ['advertising'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['bank'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['carsellerAddPost'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['carsellerBuy'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['cryptoBuy'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['cryptoSell'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['cryptoTransfer'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['darkchat'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['dispatchSendMessage'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['dispatchSendReport'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['livestreamCreate'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['livestreamDonate'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['mail'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['news'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['rentacarRent'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['rentacarReturn'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['squawkPost'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['taxiCall'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['taxiCallAccpet'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['taxiFinish'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['taxiTip'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['bussinesBillingCreate'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['bussinesBillingPay'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['bussinesBillDelete'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['bussinesSetJob'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['bussinesGradeUpDown'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['messageSend'] = "",
    ['messageGroupSend'] = "",
    ['startCall'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['casinoRollWinner'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['casinoDiceWinner'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['casinoChipSeller'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['casinoChipBuy'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['livestreamcheerbuy'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['livestreamtransfer'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['livestremcoinsell'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['snapgramPost'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['darkchatCreateRoom'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA",
    ['darkchatDeleteRoom'] = "https://discord.com/api/webhooks/1319798739153588234/DBlbkPz2hNuWQxRcNW8vuWWdaF00xApbgprYenwSWwNI-OJ1VWp-vupH5n4ox5GyHPQA"
}









---- Media Services Settings ----
---## If you do not have a custom media service, do not change the section below. ##--
Cfg.MediaServices = {
    gksmedia = {
        ImgService = {
            url = "https://servicemedia.gkshop.org/mediau",
            field = "gks_image",
            AuthHeader = "GKSHOP-Secret",
            AuthToken = Cfg.AuthTokenImage,
            returnIndex = "link"
        },
        AudioService = {
            url = "https://servicemedia.gkshop.org/mediau",
            field = "gks_audio",
            AuthHeader = "GKSHOP-Secret",
            AuthToken = Cfg.AuthTokenAudio,
            returnIndex = "link"
        },
        VideoService = {
            url = "https://servicemedia.gkshop.org/mediau",
            field = "gks_video",
            AuthHeader = "GKSHOP-Secret",
            AuthToken = Cfg.AuthTokenVideo,
            returnIndex = "link"
        },
    },
    fivemanage = {
        ImgService = {
            url = "https://fmapi.net/api/v2/presigned-url?fileType=image",
            field = "file",
            returnIndex = "data.url"
        },
        AudioService = {
            url = "https://fmapi.net/api/v2/presigned-url?fileType=audio",
            field = "file",
            returnIndex = "data.url"
        },
        VideoService = {
            url = "https://fmapi.net/api/v2/presigned-url?fileType=video",
            field = "file",
            returnIndex = "data.url"
        }
    },
    fivemerr = {
        ImgService = {
            url = "https://api.fivemerr.com/v1/media/images",
            field = "file",
            AuthHeader = "Authorization",
            AuthToken = Cfg.AuthTokenImage,
            returnIndex = "url"
        },
        AudioService = {
            url = "https://api.fivemerr.com/v1/media/audios",
            field = "file",
            AuthHeader = "Authorization",
            AuthToken = Cfg.AuthTokenAudio,
            returnIndex = "url"
        },
        VideoService = {
            url = "https://api.fivemerr.com/v1/media/videos",
            field = "file",
            AuthHeader = "Authorization",
            AuthToken = Cfg.AuthTokenVideo,
            returnIndex = "url"
        },
    },
    customMedia = {
        ImgService = {
            url = "",
            field = "",
            AuthHeader = "",
            AuthToken = Cfg.AuthTokenImage,
            returnIndex = ""
        },
        AudioService = {
            url = "",
            field = "",
            AuthHeader = "",
            AuthToken = Cfg.AuthTokenAudio,
            returnIndex = ""
        },
        VideoService = {
            url = "",
            field = "",
            AuthHeader = "",
            AuthToken = Cfg.AuthTokenVideo,
            returnIndex = ""
        },
    }
}