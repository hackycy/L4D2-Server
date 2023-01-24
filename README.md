# L4D2 服务器搭建教程

- [Window搭建教学](https://github.com/fbef0102/Game-Private_Plugin/tree/main/Tutorial_教學區/Chinese_繁體中文/Server/安裝伺服器與插件)
- [Linux搭建教学](https://www.bilibili.com/read/cv16824745/)

# kick banned

SRCDS store temporary and permanent bans in memory.
- You can check with server commands listid, listip.

SRCDS write only permanent bans in banned_user.cfg, banned_ip.cfg files, when you use command writeid, writeip.

When SRCDS shutdown or reboot, all bans disappear from memory. If you like permanent bans back to server memory,
you need execute ban files, exec banned_user.cfg, exec banned_ip.cfg

To keep temporary bans active after server reboot, you need mod/plugins for this. SRCDS not save these.

To unban, use commands removeid, removeip.
Use either removeid "STEAMID" or index number from listid list (ex. removeid 3).
Same in IP addresses (removeip).
After unban, you should also use commands writeid, writeip to update permanent files.

This above is SRCDS own ban system.

# Vocalize Commands

> NOTE: Not everyone likes vocalize spam. If you spam, you're getting the risk of getting vote kicked by other players.
>
> https://steamcommunity.com/groups/l4d2asia/announcements/detail/91359845184746645

**[Universal Vocalize Commands]**

- Death Scream : Vocalize Playerdeath
- Vocalize Warn Tank : Vocalize Playeralsowarntank
- Vocalize Warn Witch : Vocalize Playeralsowarntank
- Vocalize Warn Boomer : Vocalize Playeralsowarnboomer
- Vocalize Warn Smoker : Vocalize Playeralsowarnsmoker
- Vocalize Using Adrenaline : Vocalize Useadrenaline
- Vocalize Hanging From Ledge: Vocalize PlayerLedgeHangEnd
- Vocalize Looking4Teammates : Vocalize Playerlostcall
- Vocalize Eating Pills : Vocalize EatPills
- Vocalize Giving Your Teammate An Item : VocalizePlayerAlertGiveItem
- Vocalize Grabbed By A Smoker : Vocalize PlayerChoke
- Ask Team If They Are Ready : Vocalize PlayerAskReady
- Ask The Team To Follow You : Vocalize PlayerFollowMe
- Vocalize Reaction To Friendly Fire : Vocalize PlayerFriendlyFire
- Ask Team To Wait For You To Heal : Vocalize PlayerHealing
- Asked Teammate To Let You Heal Them : Vocalize HealingOther
- Ask For Help : Vocalize PlayerHelp
- Vocalize Hurrah! (Encouragement) : Vocalize PLayerHurrah
- Vocalize Let's Go : Vocalize PlayerHurryUp
- Say You Agree / Are With Your Team : Vocalize PlayerImWithYou
- Let Your Team Know You're Incapped : Vocalize PLayerIncapacitated
- Notify Your Team A Horde Is Coming : Vocalize PlayerIncoming
- Tell teammate To Turn Of Their Flashlight : Vocalize PlayerKillThatLight
- Vocalize Laughing : Vocalize PlayerLaugh
- Tell A Teammate To Take The Lead : Vocalize PlayerLeadOn
- Tell You're Team You Have Fallen Off A Ledge : Vocalize PLayerLedgeHangStart
- Vocalize You're Getting Worried From Hanging : Vocalize PLayerLedgeHangMiddle
- Vocalize You're About To Fall From The Ledge : Vocalize PlayerLedgeHangEnd
- Vocalize Saving A Teammate From A Ledge : Vocalize PlayerLedgeSave
- Vocalize Saving A Teammate From A Critical Ledge Hang : Vocalize LedgeSaveCritical
- Tell Your Team/Teammate To Watch Out! : Vocalize PlayerLookOut
- Tell Your Team We Should Get Moving : Vocalize PLayerMoveOn
- Vocalize Nice Job! : Vocalize PlayerNiceJob
- Vocalize No! : Vocalize PlayerNo
- Vocalize Reviving A Teammate : Vocalize PlayerReviveFriend
- Tell your Team/Teammate You're Sorry! : Vocalize PlayerSorry
- Tell Your Team You've Found Ammo : Vocalize PlayerSpotAmmo
- Tell Your Team To Stick Together : VocalizePLayerStayTogether
- Vocalize Taunting : Vocalize playerTaunt
- Say Thank You! : Vocalize PlayerThanks
- Vocalize Being Vomitted On : Vocalize PlayerVomitInFace
- Vocalize Wait Here! : Vocalize PlayerWaithere
- Vocalize Be Careful : Vocalize PlayerWarnCareful
- Tell Your Team Infected Are Coming From Behind : Vocalize PlayerWatchOutBehind
- Vocalize Yes! : Vocalize PlayerYes
- Vocalize You're Welcome : Vocalize PLayerYouAreWelcome
- Vocalize More Casual you're Welcome : Vocalize YouWelcome
- Vocalize Look! : Vocalize SmartLook
- Vocalize Being Jockeyed : vocalize SurvivorJockeyed
- Vocalize Empathetic Run :Vocalize PlayerYellRun

# 插件

- [血量显示Infected Health Gauge](https://forums.alliedmods.net/showthread.php?p=1167221)
- [切换角色Character Select Menu](https://forums.alliedmods.net/showthread.php?t=107121)
- [无限火力Infinite Ammo](https://forums.alliedmods.net/showthread.php?t=123100)
- [多人BUG修复Left-4-fix](https://github.com/LuxLuma/Left-4-fix)
- [激光+夜视Laser that never sucks](https://forums.alliedmods.net/showthread.php?p=2639383)
- [VIP Core](https://github.com/R1KO/VIP-Core)
- [Restart Empty Server (or Map)](https://forums.alliedmods.net/showthread.php?t=315367)
- [Map changer with rating system](https://forums.alliedmods.net/showthread.php?t=311161)
- [Vote Manager 3](https://forums.alliedmods.net/showthread.php?t=170445)

# MOD

- [给bot加智](https://steamcommunity.com/sharedfiles/filedetails/?id=1968764163)
- [Left 4 Bots](https://steamcommunity.com/sharedfiles/filedetails/?id=2279814689)
- [Competitive-Bots+](https://steamcommunity.com/sharedfiles/filedetails/?id=655424673)
- [写实风人物(含R18)合集](https://steamcommunity.com/sharedfiles/filedetails/?id=2679385662)
- [没有心跳的少女枪械合集](https://steamcommunity.com/workshop/filedetails/?id=2828134783)

# 其他

- [成就指南](https://steamcommunity.com/sharedfiles/filedetails/?id=1353897735)
- [三方图c4code](https://pan.c4code.cn:9185/share/rU503ioM)
- [望夜插件整合](https://bbs.3dmgame.com/thread-4920489-1-1.html)
- [L4D1_2-Plugins](https://github.com/fbef0102/L4D1_2-Plugins)
- [L4D2-Plugins](https://github.com/fbef0102/L4D2-Plugins)