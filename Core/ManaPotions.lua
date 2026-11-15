local addonName, ham = ...

-- Mana potion data, researched on Wowhead (tooltip data per game flavor). Every flavor list in
-- Core/ManaPotions/*.lua is sorted by the amount of mana restored, highest first, using the
-- numbers of that flavor's own client. Where two potions restore the same amount, plain mana
-- potions come before rejuvenation potions, and the list groups them ({ ... }), so that "Weakest
-- Mana Potion First" keeps their order (ham.potionPriority).
--
-- Deliberately NOT included:
--  * channeled/"defenseless" potions (Potion of Concentration/Focus/Frozen Focus/Devoured Dreams, ...)
--  * potions with a downside or a random side effect (Fel Mana Potion, Crazy/Mad Alchemist's Potion,
--    Mysterious Potion, Potion of Nightmares, dreamless sleep potions, ...)
--  * zone-locked potions (Tol Barad, Blade's Edge, Tempest Keep, Coilfang), unless a list adds
--    them behind a zone check (Forever's Windstone)
--  * Remix-only and QA items

-- Retail - Midnight
ham.lightfusedManaPotion2 = ham.Item.new(241300, "Lightfused Mana Potion")
ham.lightfusedManaPotion1 = ham.Item.new(241301, "Lightfused Mana Potion")
ham.fleetingLightfusedManaPotion2 = ham.Item.new(245916, "Fleeting Lightfused Mana Potion")
ham.fleetingLightfusedManaPotion1 = ham.Item.new(245917, "Fleeting Lightfused Mana Potion")
-- Restores health AND mana, so it only shows up when "Include Rejuvenation Potions" is enabled
ham.manaRefreshingSerum2 = ham.Item.new(241306, "Refreshing Serum", { rejuvenation = true })
ham.manaRefreshingSerum1 = ham.Item.new(241307, "Refreshing Serum", { rejuvenation = true })

-- Retail - The War Within
ham.algariManaPotionR3 = ham.Item.new(212241, "Algari Mana Potion")
ham.algariManaPotionR2 = ham.Item.new(212240, "Algari Mana Potion")
ham.algariManaPotionR1 = ham.Item.new(212239, "Algari Mana Potion")
ham.fleetingAlgariManaPotionR3 = ham.Item.new(212947, "Fleeting Algari Mana Potion")
ham.fleetingAlgariManaPotionR2 = ham.Item.new(212946, "Fleeting Algari Mana Potion")
ham.fleetingAlgariManaPotionR1 = ham.Item.new(212945, "Fleeting Algari Mana Potion")
ham.manaCavedwellersDelightR3 = ham.Item.new(212244, "Cavedweller's Delight", { rejuvenation = true })
ham.manaCavedwellersDelightR2 = ham.Item.new(212243, "Cavedweller's Delight", { rejuvenation = true })
ham.manaCavedwellersDelightR1 = ham.Item.new(212242, "Cavedweller's Delight", { rejuvenation = true })
ham.manaFleetingCavedwellersDelightR3 = ham.Item.new(212950, "Fleeting Cavedweller's Delight", { rejuvenation = true })
ham.manaFleetingCavedwellersDelightR2 = ham.Item.new(212949, "Fleeting Cavedweller's Delight", { rejuvenation = true })
ham.manaFleetingCavedwellersDelightR1 = ham.Item.new(212948, "Fleeting Cavedweller's Delight", { rejuvenation = true })
ham.survivalistsManaPotion = ham.Item.new(224022, "Survivalist's Mana Potion") -- 20% of maximum mana

-- Retail - Dragonflight
ham.aeratedManaPotionR3 = ham.Item.new(191386, "Aerated Mana Potion")
ham.aeratedManaPotionR2 = ham.Item.new(191385, "Aerated Mana Potion")
ham.aeratedManaPotionR1 = ham.Item.new(191384, "Aerated Mana Potion")

-- Retail - Shadowlands, Battle for Azeroth, Legion, Warlords of Draenor
ham.spiritualManaPotion = ham.Item.new(171268, "Spiritual Mana Potion")
ham.soulfulManaPotion = ham.Item.new(180318, "Soulful Mana Potion")
ham.coastalManaPotion = ham.Item.new(152495, "Coastal Mana Potion")
ham.ancientManaPotion = ham.Item.new(127835, "Ancient Mana Potion")
ham.draenicManaPotion = ham.Item.new(109222, "Draenic Mana Potion")

-- Mists of Pandaria
ham.masterManaPotion = ham.Item.new(76098, "Master Mana Potion")
ham.alchemistsRejuvenation = ham.Item.new(76094, "Alchemist's Rejuvenation", { rejuvenation = true })

-- Cataclysm
ham.mythicalManaPotion = ham.Item.new(57192, "Mythical Mana Potion")
ham.mightyRejuvenationPotion = ham.Item.new(57193, "Mighty Rejuvenation Potion", { rejuvenation = true })

-- Wrath of the Lich King
ham.runicManaPotion = ham.Item.new(33448, "Runic Mana Potion")
ham.runicManaInjector = ham.Item.new(42545, "Runic Mana Injector")
ham.powerfulRejuvenationPotion = ham.Item.new(40087, "Powerful Rejuvenation Potion", { rejuvenation = true })
ham.icyManaPotion = ham.Item.new(40067, "Icy Mana Potion")
ham.argentManaPotion = ham.Item.new(43530, "Argent Mana Potion")
ham.endlessManaPotion = ham.Item.new(43570, "Endless Mana Potion") -- not consumed when used

-- The Burning Crusade
ham.superManaPotion = ham.Item.new(22832, "Super Mana Potion")
ham.auchenaiManaPotion = ham.Item.new(32948, "Auchenai Mana Potion")
ham.crystalManaPotion = ham.Item.new(33935, "Crystal Mana Potion")
ham.manaPotionInjector = ham.Item.new(33093, "Mana Potion Injector")
ham.superRejuvenationPotion = ham.Item.new(22850, "Super Rejuvenation Potion", { rejuvenation = true })
ham.unstableManaPotion = ham.Item.new(28101, "Unstable Mana Potion")
-- Battleground rewards, one per battleground (identical effect)
ham.majorCombatManaPotionAB = ham.Item.new(31840, "Major Combat Mana Potion")
ham.majorCombatManaPotionAV = ham.Item.new(31841, "Major Combat Mana Potion")
ham.majorCombatManaPotionEotS = ham.Item.new(31854, "Major Combat Mana Potion")
ham.majorCombatManaPotionWSG = ham.Item.new(31855, "Major Combat Mana Potion")

-- Classic
ham.majorManaPotion = ham.Item.new(13444, "Major Mana Potion")
ham.majorRejuvenationPotion = ham.Item.new(18253, "Major Rejuvenation Potion", { rejuvenation = true })
ham.combatManaPotion = ham.Item.new(18841, "Combat Mana Potion")
ham.superiorManaPotion = ham.Item.new(13443, "Superior Mana Potion")
ham.superiorManaPotionForever = ham.Item.new(288897, "Superior Mana Potion") -- Forever only, level 1 version
ham.greaterManaPotion = ham.Item.new(6149, "Greater Mana Potion")
ham.manaPotion = ham.Item.new(3827, "Mana Potion")
ham.lesserManaPotion = ham.Item.new(3385, "Lesser Mana Potion")
ham.lesserManaPotionForever = ham.Item.new(287969, "Lesser Mana Potion") -- Forever only, level 1 version
ham.minorManaPotion = ham.Item.new(2455, "Minor Mana Potion")
ham.minorManaPotionForever = ham.Item.new(287968, "Minor Mana Potion") -- Forever only, level 1 version
ham.manaTessasTonic = ham.Item.new(274935, "Tessa's Tonic", { rejuvenation = true }) -- Forever only
-- Forever only, zone-locked to Zephras Isle
ham.manaWindstone = ham.Item.new(255663, "Windstone", { rejuvenation = true, zoneLocked = true })
ham.minorRejuvenationPotion = ham.Item.new(2456, "Minor Rejuvenation Potion", { rejuvenation = true })
-- Classic/TBC PvP battleground-only draughts
ham.majorManaDraught = ham.Item.new(17351, "Major Mana Draught", { zoneLocked = true })
ham.superiorManaDraught = ham.Item.new(17352, "Superior Mana Draught", { zoneLocked = true })

-- Mana gems: conjured by mages, soulbound, and on a cooldown of their own that all mana gems
-- share, apart from the mana potions' one. AutoManaPotion uses the best one before the potion.
ham.manaAgate = ham.Item.new(5514, "Mana Agate")
ham.manaJade = ham.Item.new(5513, "Mana Jade")
ham.manaCitrine = ham.Item.new(8007, "Mana Citrine")
ham.manaRuby = ham.Item.new(8008, "Mana Ruby")
ham.manaEmerald = ham.Item.new(22044, "Mana Emerald")
ham.manaSapphire = ham.Item.new(33312, "Mana Sapphire")
ham.manaGem = ham.Item.new(36799, "Mana Gem")
ham.brilliantManaGem = ham.Item.new(81901, "Brilliant Mana Gem")

-- Off-hand mana item (Mage quest reward): 30m cooldown, restores 400-1200 mana.
ham.celestialOrb = ham.Item.new(7515, "Celestial Orb")

local function getManaGems()
  if ham.isRetail and ham.getManaGemsForRetail then return ham.getManaGemsForRetail() end
  if ham.isClassic and ham.getManaGemsForClassic then return ham.getManaGemsForClassic() end
  if ham.isTBC and ham.getManaGemsForTBC then return ham.getManaGemsForTBC() end
  if ham.isWrath and ham.getManaGemsForWrath then return ham.getManaGemsForWrath() end
  if ham.isCata and ham.getManaGemsForCata then return ham.getManaGemsForCata() end
  if ham.isMop and ham.getManaGemsForMists then return ham.getManaGemsForMists() end
  if ham.isForever and ham.getManaGemsForForever then return ham.getManaGemsForForever() end
  return {}
end

-- The best mana gem currently in the player's bags, regardless of AutoManaPotion settings.
function ham.getBestManaGem()
  for _, gem in ipairs(getManaGems()) do
    if gem.getCount() > 0 then return gem end
  end
  return nil
end

-- The mana gem AutoManaPotion uses: the best one in the bags, nil without one, with
-- "Use mana gems" off, or when mana gems are split into their own AutoManaGem macro.
function ham.getManaGem()
  if not ham.options.useManaGems or ham.options.separateManaGemMacro then return nil end
  return ham.getBestManaGem()
end

local function isItemEquipped(itemId)
  if GetInventoryItemID and GetInventoryItemID("player", 17) == itemId then
    return true
  end
  if C_Item and C_Item.IsEquippedItem then
    return C_Item.IsEquippedItem(itemId)
  end
  if IsEquippedItem then
    return IsEquippedItem(itemId)
  end
  return false
end

-- Celestial Orb only counts when equipped in the off-hand slot.
ham.celestialOrb.getCount = function()
  return isItemEquipped(ham.celestialOrb.getId()) and 1 or 0
end

-- Returns Celestial Orb (item 7515) when currently equipped in the off-hand slot.
function ham.getCelestialOrb()
  if isItemEquipped(ham.celestialOrb.getId()) then
    return ham.celestialOrb
  end
  return nil
end

local function getRawManaPotions()
  if ham.isRetail and ham.getManaPotionsForRetail then return ham.getManaPotionsForRetail() end
  if ham.isClassic and ham.getManaPotionsForClassic then return ham.getManaPotionsForClassic() end
  if ham.isTBC and ham.getManaPotionsForTBC then return ham.getManaPotionsForTBC() end
  if ham.isWrath and ham.getManaPotionsForWrath then return ham.getManaPotionsForWrath() end
  if ham.isCata and ham.getManaPotionsForCata then return ham.getManaPotionsForCata() end
  if ham.isMop and ham.getManaPotionsForMists then return ham.getManaPotionsForMists() end
  if ham.isForever and ham.getManaPotionsForForever then return ham.getManaPotionsForForever() end
  return {}
end

-- Return a prioritized list of mana potions for the current client, excluding the
-- rejuvenation (health AND mana) potions when the user turned them off. Enabled by default,
-- so only an explicit `false` counts as "off" (older saved variables don't have the key).
-- Best first or, with "Weakest Mana Potion First", weakest first.
function ham.getManaPotions()
  -- Potions are not allowed in instanced PvP on Retail, same as the health potions
  if ham.isInInstancedPvP and ham.isInInstancedPvP() then
    return {}
  end

  local list = ham.potionPriority(getRawManaPotions(), ham.options.weakestManaPotionFirst)
  if ham.options.includeRejuvenation then
    return list
  end
  local filtered = {}
  for _, item in ipairs(list) do
    if not item.hasTag("rejuvenation") then
      table.insert(filtered, item)
    end
  end
  return filtered
end

local function usable(value)
  return not (issecretvalue and issecretvalue(value))
end

local function rawItemCooldown(itemId)
  if C_Item and C_Item.GetItemCooldown then
    return C_Item.GetItemCooldown(itemId)
  end
  if C_Container and C_Container.GetItemCooldown then
    return C_Container.GetItemCooldown(itemId)
  end
  if GetItemCooldown then
    return GetItemCooldown(itemId)
  end
  return 0, 0, 0
end

-- Remaining cooldown in seconds for itemId, ignoring the 1.5s GCD and secret values.
function ham.getItemCooldownRemaining(itemId)
  if not itemId then return 0 end
  local start, duration, enable = rawItemCooldown(itemId)
  if not usable(start) or not usable(duration) or not usable(enable) then
    return 0
  end
  if enable == 0 or not start or start <= 0 or not duration or duration <= 1.5 then
    return 0
  end
  local remaining = (start + duration) - GetTime()
  if remaining > 0.05 then
    return remaining
  end
  return 0
end

-- Returns (activePreItems, minExpiry, skippedPreItems): decides which pre-potion items
-- (mana gem and equipped Celestial Orb) belong ahead of the mana potion `pot`.
-- `gem` is skipped only when skipManaGemOnCooldown is enabled and a later item (`orb` or
-- `pot`) is ready sooner. `orb` (30m CD) is always skipped when on cooldown and `pot` (or
-- a sooner `gem` when no `pot` exists) is ready first so its 30m CD never blocks potions.
function ham.getActiveManaSequence(gem, orb, pot)
  local activePre = {}
  local skippedPre = {}
  local minExpiry = nil

  local function trackExpiry(delay)
    if delay and delay > 0 and (not minExpiry or delay < minExpiry) then
      minExpiry = delay
    end
  end

  local gemRem = gem and ham.getItemCooldownRemaining(gem.getId()) or nil
  local orbRem = orb and ham.getItemCooldownRemaining(orb.getId()) or nil
  local potRem = pot and ham.getItemCooldownRemaining(pot.getId()) or nil

  local allowSkipGem = ham.options and ham.options.useManaGems and ham.options.skipManaGemOnCooldown
  local skipGem = false
  if gem then
    local afterGemMin = orbRem
    if potRem and (not afterGemMin or potRem < afterGemMin) then
      afterGemMin = potRem
    end
    if allowSkipGem and gemRem > 0 and afterGemMin and afterGemMin < gemRem then
      skipGem = true
      table.insert(skippedPre, gem)
    else
      table.insert(activePre, gem)
    end
    if allowSkipGem and gemRem > 0 then
      trackExpiry(gemRem)
    end
  end

  if orb then
    local soonerAfterOrb = potRem and potRem < orbRem
    local gemCoversWhenNoPot = (not pot) and gem and (not skipGem) and (gemRem < orbRem)
    if orbRem > 0 and (soonerAfterOrb or gemCoversWhenNoPot) then
      table.insert(skippedPre, orb)
    else
      table.insert(activePre, orb)
    end
    if orbRem > 0 and (soonerAfterOrb or gemCoversWhenNoPot or pot ~= nil) then
      trackExpiry(orbRem)
    end
  end

  return activePre, minExpiry, skippedPre
end

-- Returns (skipGem, refreshDelay): whether the macro should show/use the mana potion
-- ahead of the mana gem because the gem is on cooldown and the potion is ready sooner.
function ham.shouldPutManaPotionBeforeGem(gem, pot)
  if not gem or not pot then
    return false, nil
  end
  local activePre, expiry = ham.getActiveManaSequence(gem, nil, pot)
  return #activePre == 0, expiry
end
