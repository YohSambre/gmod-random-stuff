if SAM_LOADED then return end
sam.command.set_category("User Management")
sam.command.new("bot")
    :SetPermission("bot", "admin")
    :Help("Spawn a bot on the server.")
    :OnExecute(function(ply)
        RunConsoleCommand("bot")
    end)
:End()
