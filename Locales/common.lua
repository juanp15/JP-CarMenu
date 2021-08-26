----------------------- [ JP_CarMenu ] -----------------------
-- GitHub: https://github.com/juanp15
-- License:
-- url
-- Author: Juanp
-- Discord: https://discord.gg/Mm5YWy7BqY
-- Name: JP_CarMenu
-- Version: 1.0.0
-- Description: JP Car Menu
----------------------- [ JP_CarMenu ] -----------------------

local SEL_LOCALE = GetResourceMetadata(GetCurrentResourceName(), 'locale', 0)
local Locales = {}

function _(locale, ...)
    if Locales[SEL_LOCALE][locale] then
        return (Locales[SEL_LOCALE][locale]):format(...)
    end
    return ("Locale '%s' for '%s' not set!"):format(locale, SEL_LOCALE)
end

function locale(language)
    if not Locales[language] then Locales[language] = {} end
    return {
        set = function(_, localeName)
            return {
                label = function(_, localeLabel)
                    Locales[language][localeName] = localeLabel
                    return locale(language)
                end
            }
        end
    }
end