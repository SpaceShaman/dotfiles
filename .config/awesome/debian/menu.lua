-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

local awesome = awesome

Debian_menu = {}

Debian_menu["Debian_Aplikacje_Dostępność"] = {
	{ "Xmag", "xmag" },
}
Debian_menu["Debian_Aplikacje_Edytory"] = {
	{ "Xedit", "xedit" },
}
Debian_menu["Debian_Aplikacje_Grafika"] = {
	{ "X Window Snapshot", "xwd | xwud" },
}
Debian_menu["Debian_Aplikacje_Nauki_ścisłe_Matematyka"] = {
	{ "Bc",    "x-terminal-emulator -e " .. "/usr/bin/bc" },
	{ "Dc",    "x-terminal-emulator -e " .. "/usr/bin/dc" },
	{ "Xcalc", "xcalc" },
}
Debian_menu["Debian_Aplikacje_Nauki_ścisłe"] = {
	{ "Matematyka", Debian_menu["Debian_Aplikacje_Nauki_ścisłe_Matematyka"] },
}
Debian_menu["Debian_Aplikacje_Powłoki"] = {
	{ "Bash", "x-terminal-emulator -e " .. "/bin/bash --login" },
	{ "Dash", "x-terminal-emulator -e " .. "/bin/dash -i" },
	{ "Sh",   "x-terminal-emulator -e " .. "/bin/sh --login" },
}
Debian_menu["Debian_Aplikacje_Programowanie"] = {
	{ "Tclsh8.6", "x-terminal-emulator -e " .. "/usr/bin/tclsh8.6" },
}
Debian_menu["Debian_Aplikacje_Przeglądarki"] = {
	{ "Xditview", "xditview" },
}
Debian_menu["Debian_Aplikacje_Sieć_Komunikacja"] = {
	{ "Telnet", "x-terminal-emulator -e " .. "/usr/bin/telnet.netkit" },
	{ "Xbiff",  "xbiff" },
}
Debian_menu["Debian_Aplikacje_Sieć"] = {
	{ "Komunikacja", Debian_menu["Debian_Aplikacje_Sieć_Komunikacja"] },
}
Debian_menu["Debian_Aplikacje_Systemowe_Administracja"] = {
	{ "Editres",    "editres" },
	{ "Xclipboard", "xclipboard" },
	{ "Xfontsel",   "xfontsel" },
	{ "Xkill",      "xkill" },
	{ "Xrefresh",   "xrefresh" },
}
Debian_menu["Debian_Aplikacje_Systemowe_Monitorowanie"] = {
	{ "Pstree",   "x-terminal-emulator -e " .. "/usr/bin/pstree.x11", "/usr/share/pixmaps/pstree16.xpm" },
	{ "Top",      "x-terminal-emulator -e " .. "/usr/bin/top" },
	{ "Xconsole", "xconsole -file /dev/xconsole" },
	{ "Xev",      "x-terminal-emulator -e xev" },
	{ "Xload",    "xload" },
}
Debian_menu["Debian_Aplikacje_Systemowe_Sprzęt"] = {
	{ "Xvidtune", "xvidtune" },
}
Debian_menu["Debian_Aplikacje_Systemowe"] = {
	{ "Administracja", Debian_menu["Debian_Aplikacje_Systemowe_Administracja"] },
	{ "Monitorowanie", Debian_menu["Debian_Aplikacje_Systemowe_Monitorowanie"] },
	{ "Sprzęt",        Debian_menu["Debian_Aplikacje_Systemowe_Sprzęt"] },
}
Debian_menu["Debian_Aplikacje"] = {
	{ "Dostępność",    Debian_menu["Debian_Aplikacje_Dostępność"] },
	{ "Edytory",       Debian_menu["Debian_Aplikacje_Edytory"] },
	{ "Grafika",       Debian_menu["Debian_Aplikacje_Grafika"] },
	{ "Nauki ścisłe",  Debian_menu["Debian_Aplikacje_Nauki_ścisłe"] },
	{ "Powłoki",       Debian_menu["Debian_Aplikacje_Powłoki"] },
	{ "Programowanie", Debian_menu["Debian_Aplikacje_Programowanie"] },
	{ "Przeglądarki",  Debian_menu["Debian_Aplikacje_Przeglądarki"] },
	{ "Sieć",          Debian_menu["Debian_Aplikacje_Sieć"] },
	{ "Systemowe",     Debian_menu["Debian_Aplikacje_Systemowe"] },
}
Debian_menu["Debian_Gry_Zabawki"] = {
	{ "Oclock",           "oclock" },
	{ "Xclock (analog)",  "xclock -analog" },
	{ "Xclock (digital)", "xclock -digital -update 1" },
	{ "Xeyes",            "xeyes" },
	{ "Xlogo",            "xlogo" },
}
Debian_menu["Debian_Gry"] = {
	{ "Zabawki", Debian_menu["Debian_Gry_Zabawki"] },
}
Debian_menu["Debian_Menedżery_okien"] = {
	{ "awesome", function() awesome.exec("/usr/bin/awesome") end, "/usr/share/pixmaps/awesome.xpm" },
}
Debian_menu["Debian_Pomoc"] = {
	{ "Xman", "xman" },
}
Debian_menu["Debian"] = {
	{ "Aplikacje",       Debian_menu["Debian_Aplikacje"] },
	{ "Gry",             Debian_menu["Debian_Gry"] },
	{ "Menedżery okien", Debian_menu["Debian_Menedżery_okien"] },
	{ "Pomoc",           Debian_menu["Debian_Pomoc"] },
}

debian = { menu = { Debian_menu = Debian_menu } }
return debian
