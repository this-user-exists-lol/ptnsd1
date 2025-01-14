scr_initinput()
global.saveroom = ds_list_create()
grav = 0.5
hsp = 0
vsp = 0
global.playerhealth = 5
xscale = 1
yscale = 1
facehurt = 0
steppy = 0
depth = -7
movespeed = 19
jumpstop = 0
visible = true
state = 8
jumpAnim = 1
mapdir = 0
landAnim = 0
bumped = 0
machslideAnim = 0
moveAnim = 1
stopAnim = 1
crouchslideAnim = 1
crouchAnim = 1
machhitAnim = 0
stompAnim = 0
inv_frames = 0
hurted = 0
autodash = 0
startgate_buffer = 0
mach2 = 0
input_buffer_jump = 8
input_buffer_secondjump = 8
input_buffer_highjump = 8
savedposition = 0
savedx = 0
savedy = 0
vertical_x = 0
vhallwaydirection = 0
verticalhall_vsp = 0
verticalstate = 0
verticalhallway = 0
verticalbuffer = 0
player_x = x
player_y = y
targetRoom = 0
targetDoor = "A"
flash = 0
global.key_inv = 0
global.shroomfollow = 0
global.cheesefollow = 0
global.tomatofollow = 0
global.sausagefollow = 0
global.pineapplefollow = 0
global.keyget = 0
global.collect = 0
global.collectN = 0
global.treasure = 0
global.combo = 0
global.combotime = 0
global.pizzacoin = 0
global.toppintotal = 1
global.hit = 0
global.baddieroom = ds_list_create()
global.gotshotgun = 0
key_particles = 0
barrel = 0
bounce = 0
a = 0
idle = 0
attacking = 0
slamming = 0
superslam = 0
grounded = 1
grinding = 0
machpunchAnim = 0
punch = 0
machfreefall = 0
shoot = 1
instakillmove = 0
windingAnim = 0
facestompAnim = 0
ladderbuffer = 0
toomuchalarm1 = 0
toomuchalarm2 = 0
idleanim = 0
momemtum = 0
cutscene = 0
grabbing = 0
dir = xscale
shotgunAnim = 0
goingdownslope = 0
goingupslope = 0
fallinganimation = 0
bombpeptimer = 100
suplexmove = 0
suplexhavetomash = 0
anger = 0
angry = 0
baddiegrabbedID = 0
spr_palette = spr_peppalette
character = "P"
scr_characterspr()
paletteselect = 1
global.panic = 0
global.snickchallenge = 0
colorchange = 0
treasure_x = 0
treasure_y = 0
treasure_room = 0
wallspeed = 0
tauntstoredstate = 0
tauntstoredmovespeed = 6
tauntstoredsprite = 538
taunttimer = 20
global.golfhit = 0
ini_open("saveData.ini")
global.option_fullscreen = ini_read_real("Option", "fullscreen", 1)
global.option_resolution = ini_read_real("Option", "resolution", 1)
ini_close()
if (global.option_fullscreen == 0)
    window_set_fullscreen(true)
if (global.option_fullscreen == 1)
    window_set_fullscreen(false)
if (global.option_resolution == 0)
    window_set_size(480, 270)
if (global.option_resolution == 1)
    window_set_size(960, 540)
if (global.option_resolution == 2)
    window_set_size(1920, 1080)
backtohubstartx = x
backtohubstarty = y
backtohubroom = 0
global.style = 0
slapcharge = 0
slaphand = 1
slapbuffer = 8
slapflash = 0
freefallsmash = 0
costumercutscenetimer = 0
heavy = 0
lastroom_x = 0
lastroom_y = 0
lastroom = 0
hallway = 0
hallwaydirection = 0
box = 0
roomstartx = 0
roomstarty = 0
global.secretfound = 0
global.shotgunammo = 0
swingdingbuffer = 0
lastmove = 0
backupweapon = 0
ini_open("saveData.ini")
if (!ini_section_exists("SAGE2019"))
{
    ini_write_string("SAGE2019", "shotgunsnick", 0)
    ini_write_string("SAGE2019", "dungeonbackup", 0)
    ini_write_string("SAGE2019", "srank", 0)
    ini_write_string("SAGE2019", "snicksrank", 0)
    ini_write_string("SAGE2019", "combo10", 0)
    ini_write_string("SAGE2019", "secret", 0)
    ini_write_string("SAGE2019", "knight", 0)
    ini_write_string("SAGE2019", "toppin", 0)
    ini_write_string("SAGE2019", "treasure", 0)
}
global.SAGEshotgunsnick = ini_read_string("SAGE2019", "shotgunsnick", 0)
global.SAGEshotgunsnicknumber = 0
global.SAGEdungeonbackup = ini_read_string("SAGE2019", "dungeonbackup", 0)
global.SAGEsrank = ini_read_string("SAGE2019", "srank", 0)
global.SAGEsnicksrank = ini_read_string("SAGE2019", "snicksrank", 0)
global.SAGEcombo10 = ini_read_string("SAGE2019", "combo10", 0)
global.SAGEsecret = ini_read_string("SAGE2019", "secret", 0)
global.SAGEknight = ini_read_string("SAGE2019", "knight", 0)
global.SAGEknighttaken = 0
global.SAGEtoppin = ini_read_string("SAGE2019", "toppin", 0)
global.SAGEtreasure = ini_read_string("SAGE2019", "treasure", 0)
ini_close()
stickpressed = 0
spotlight = 1
macheffect = 0
chargeeffectid = obj_null
dashcloudid = obj_null
crazyruneffectid = obj_null
fightball = 0
spriteid = obj_null
superslameffectid = obj_null
speedlineseffectid = obj_null
angryeffectid = obj_null
global.coop = 0
thrown = 0
mach1snd = -1
mach2snd = -1
mach3snd = -1
knightslide = -1
bombpep1snd = -1
mach4snd = -1
tumble2snd = -1
tumble1snd = -1
tumble3snd = -1
superjumpholdsnd = -1
superjumpprepsnd = -1
suplexdashsnd = -1

