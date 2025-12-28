local retval = IsDuplicityVersion()

if retval then
    Callbacks = {}
    CallBackRegisterServer = function(name, cb)
        Debugprint("^3[INFO]^7: Registering server callback: "..name)
        Callbacks[name] = cb
    end

    RegisterNetEvent("gksphone:server:triggerServerCallback", function (name, cb, ...)
        local src = source
        if not cb.__cfx_functionReference then
            print("^6[GKSPHONE] ^1[ERROR]^7: Callback not found: "..name)
            return
        end
        Debugprint("^3[INFO]^7: Triggering server callback: "..name)
        if Callbacks[name] then
            local returnCb = function(...)
                local args = {...}
                local size = 8001
                local maxSafeSize = 8000
                local success, encoded = pcall(json.encode, args)
                if success then
                    size = #encoded
                end
                if size > maxSafeSize then
                    TriggerLatentClientEvent("gksphone:client:triggerServerCallback", src, 125000, cb.__cfx_functionReference, ...)
                else
                    TriggerClientEvent("gksphone:client:triggerServerCallback", src, cb.__cfx_functionReference, ...)
                end
            end
            local sucess, err = pcall(Callbacks[name], src, returnCb, ...)
            if not sucess then
                local stackTrace = Citizen.InvokeNative(`FORMAT_STACK_TRACE` & 0xFFFFFFFF, nil, 0, Citizen.ResultAsString())
                print(("^1SCRIPT ERROR: Callback '%s' failed: %s^7\n%s"):format(name, err or "", stackTrace or ""))
            end
        else
            print("^6[GKSPHONE] ^1[ERROR]^7: Callback not found: "..name)
        end
    end)

    -- awaitCallback
    RegisterNetEvent("gksphone:server:awaitCallback", function(eventName, requestId, ...)
        local src = source
        local args = {...}

        -- Güvenlik kontrolleri
        if type(eventName) ~= "string" or eventName == "" then
            print("^6[GKSPHONE] ^1[ERROR]^7: Invalid eventName from player: "..src)
            return
        end

        if type(requestId) ~= "number" then
            print("^6[GKSPHONE] ^1[ERROR]^7: Invalid requestId from player: "..src)
            return
        end

        Debugprint("^3[INFO]^7: Server received awaitCallback request: "..eventName.." from player: "..src)

        local success, err = pcall(function()
            TriggerEvent(eventName, src, function(...)
                local response = {...}
                local size = 8001
                local maxSafeSize = 8000
                local encodeSuccess, encoded = pcall(json.encode, response)
                if encodeSuccess then
                    size = #encoded
                end

                if size > maxSafeSize then
                    TriggerLatentClientEvent("gksphone:client:awaitCallbackResponse", src, 125000, requestId, table.unpack(response))
                else
                    TriggerClientEvent("gksphone:client:awaitCallbackResponse", src, requestId, table.unpack(response))
                end
            end, table.unpack(args))
        end)

        if not success then
            local stackTrace = Citizen.InvokeNative(`FORMAT_STACK_TRACE` & 0xFFFFFFFF, nil, 0, Citizen.ResultAsString())
            print(("^1SCRIPT ERROR: awaitCallback '%s' failed: %s^7\n%s"):format(eventName, err or "", stackTrace or ""))
            -- Hata durumunda client'a nil yanıtı gönder
            TriggerClientEvent("gksphone:client:awaitCallbackResponse", src, requestId, nil)
        end
    end)
else
    RegisterNetEvent("gksphone:client:triggerServerCallback", function (cb, ...)
        local pack = msgpack.pack({...})
        Citizen.InvokeFunctionReference(cb, pack)
    end)

    CallBackServerTrigger = function(name, cb, ...)
        TriggerServerEvent("gksphone:server:triggerServerCallback", name, cb, ...)
    end

    -- awaitCallback
    local pendingCallbacks = {}
    local requestIdCounter = 0
    local CALLBACK_TIMEOUT = 120000 -- 120 saniye timeout

    RegisterNetEvent("gksphone:client:awaitCallbackResponse", function(requestId, ...)
        if pendingCallbacks[requestId] then
            pendingCallbacks[requestId].promise:resolve({...})
            pendingCallbacks[requestId] = nil
        end
    end)

    function AwaitCallback(eventName, ...)
        requestIdCounter = requestIdCounter + 1
        local requestId = requestIdCounter
        local p = promise.new()
        local timeoutMs = CALLBACK_TIMEOUT

        SetTimeout(timeoutMs, function()
            if pendingCallbacks[requestId] then
                Debugprint("^1[ERROR]^7: Callback timeout: "..eventName.." (RequestID: "..requestId..")")
                pendingCallbacks[requestId].promise:resolve(nil)
                pendingCallbacks[requestId] = nil
            end
        end)

        pendingCallbacks[requestId] = {
            promise = p,
            eventName = eventName
        }

        TriggerServerEvent("gksphone:server:awaitCallback", eventName, requestId, ...)

        local result = Citizen.Await(p)

        if result then
            return table.unpack(result)
        end
        return nil
    end


end