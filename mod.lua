local function pRequire(modulName)
    local state, result_or_error = pcall(require, modulName)
    if state then
        return result_or_error
    else
        return nil, result_or_error
    end
end


function data()
    return {
        info = {
            name = _("Signalisation Française - Better Signals"),
            description = _("Test signal LED"),
            minorVersion = 0,
            severityAdd = "NONE",
            severityRemove = "WARNING",
            authors = { { name = "Moi", role = "CREATOR" } },
            tags = { "europe", "signal", "better_signals" },
            dependencies = {
                "3467585867_1",
                "3689166005_1",
            },
            requiredMods = { { modId = "3689166005_1" } },
        },

        runFn = function(settings, modParams)
            local signals = pRequire('nightfury/signals/main')
            if not signals then return end
            
            signals.signals['a_type_bal'] = {
                type = "main",
                isAnimated = false,
            }
            signals.signals['b_type_bal'] = {
                type = "main",
                isAnimated = false,
            }
            signals.signals['g_type_bal'] = {
                type = "main",
                isAnimated = false,
            }
            signals.signals['e_type_bal'] = {
                type = "main",
                isAnimated = false,
            }
        end,
    }
end