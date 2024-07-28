DarkRP.createEntity("Gascan (Unlimited use)", {
    ent = "fire_gascan_unlimited",
    cmd = "buygascan",
    model = "models/props_junk/gascan001a.mdl",
    price = 50,
    max = 1,
    allowed = {
        TEAM_PYROMANE,
        TEAM_CITIZEN,
        TEAM_POMPIER
    },
    category = "Other",
})

DarkRP.createEntity("Gascan (Limited use)", {
    ent = "fire_gascan_oneshoot",
    cmd = "buygascanlimited",
    model = "models/props_junk/gascan001a.mdl",
    price = 10,
    max = 3,
    allowed = {
        TEAM_PYROMANE,
        TEAM_CITIZEN,
        TEAM_POMPIER
    },
    category = "Other",
})

DarkRP.createEntity("Water Gascan (Unlimited use)", {
    ent = "water_gascan_unlimited",
    cmd = "buywatergascan",
    model = "models/props_junk/metalgascan.mdl",
    price = 50,
    max = 1,
    allowed = {
        TEAM_PYROMANE,
        TEAM_CITIZEN,
        TEAM_POMPIER
    },
    category = "Other",
})

DarkRP.createEntity("Water Gascan (Limited use)", {
    ent = "water_gascan_oneshoot",
    cmd = "buywatergascanlimited",
    model = "models/props_junk/metalgascan.mdl",
    price = 50,
    max = 3,
    allowed = {
        TEAM_PYROMANE,
        TEAM_CITIZEN,
        TEAM_POMPIER
    },
    category = "Other",
})