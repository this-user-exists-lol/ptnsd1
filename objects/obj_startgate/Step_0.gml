targetDoor = "A"
if place_meeting(x, y, obj_player1)
    image_speed = 0.35
else
{
    image_speed = 0
    image_index = 0
}
if (obj_player1.startgate_buffer < 0) && (obj_player1.sprite_index == spr_pep_mapenterlevel)
{
    with (obj_player1)
    {
        obj_music.fadeoff = 0
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
		global.currentlevel = other.level
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout)
    }
}
ini_open("saveData.ini")
global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0)
global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0)
global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0)
if (global.SAGEsrank == 0)
{
    if ((global.medievalrank == "s") && ((global.ruinrank == "s") && (global.dungeonrank == "s")))
        ini_write_string("SAGE2019", "srank", 1)
}
global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0)
if (global.SAGEsnicksrank == 0)
{
    if (global.snickchallengerank == "s")
        ini_write_string("SAGE2019", "snicksrank", 1)
}
global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0)
global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0)
if ((global.medievalsecret == 6) && ((global.ruinsecret == 6) && ((global.dungeonsecret == 6) && (global.SAGEsecret == 0))))
    ini_write_string("SAGE2019", "secret", 1)
global.SAGEknight = ini_read_string("SAGE2019", "knight", 0)
global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0)
if ((global.medievaltoppin1 == 1) && ((global.medievaltoppin2 == 1) && ((global.medievaltoppin3 == 1) && ((global.medievaltoppin4 == 1) && ((global.medievaltoppin5 == 1) && ((global.ruintoppin1 == 1) && ((global.ruintoppin2 == 1) && ((global.ruintoppin3 == 1) && ((global.ruintoppin4 == 1) && ((global.ruintoppin5 == 1) && ((global.dungeontoppin1 == 1) && ((global.dungeontoppin2 == 1) && ((global.dungeontoppin3 == 1) && ((global.dungeontoppin4 == 1) && ((global.dungeontoppin5 == 1) && (global.SAGEtoppin == 0))))))))))))))))
    ini_write_string("SAGE2019", "toppin", 1)
global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0)
if ((global.medievaltreasure == 1) && ((global.ruintreasure == 1) && ((global.dungeontreasure == 1) && (global.SAGEtreasure == 0))))
    ini_write_string("SAGE2019", "treasure", 1)
ini_close()
if (distance_to_object(obj_player) < 50)
{
	if level == "none"
		scr_tvtext("6 DOLLAR SHRIMP SPECIAL", 2)
	else
		scr_tvtext(level, 2)
}