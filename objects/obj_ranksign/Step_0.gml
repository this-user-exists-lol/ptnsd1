ini_open("saveData.ini")
global.entrancerank = ini_read_string("Ranks", "entrance", "none")
global.medievalrank = ini_read_string("Ranks", "medieval", "none")
global.chateaurank = ini_read_string("Ranks", "chateau", "none")
global.ruinrank = ini_read_string("Ranks", "ruin", "none")
global.dungeonrank = ini_read_string("Ranks", "dungeon", "none")
global.strongcoldrank = ini_read_string("Ranks", "strongcold", "none")
global.snickchallengerank = ini_read_string("Ranks", "snickchallenge", "none")
ini_close()
if (levelsign == "entrance")
{
    if (global.entrancerank == "none")
        visible = false
    else
        visible = true
    if (global.entrancerank == "s")
        image_index = 0
    if (global.entrancerank == "a")
        image_index = 1
    if (global.entrancerank == "b")
        image_index = 2
    if (global.entrancerank == "c")
        image_index = 3
    if (global.entrancerank == "d")
        image_index = 4
}
with (obj_startgate)
{
    if (level == "snickchallenge")
    {
        if ((global.medievalrank == "none") || ((global.ruinrank == "none") || (global.dungeonrank == "none")))
            instance_destroy()
    }
}

