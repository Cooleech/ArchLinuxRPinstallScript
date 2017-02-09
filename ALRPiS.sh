#!/bin/bash
################################
# What	 : ArchLinuxRPiScript  #
# Which	 : version 1.01        #
# Who	 : Cooleech            #
# Where  : GPLv2               #
# Write	 : cooleechATgmail.com #
################################
#==============================================================================#
clear
echo -e "\n \e[1;34mOdaberite jezik instalera\e[0m | \e[1;34mPick installer's language\e[0m:\n\n \e[36mh\e[0m = \e[36mHrvatski\e[0m\t<= default\n\n \e[36me\e[0m = \e[36mEnglish\e[0m\n"
read Language
Language="${Language,,}"
case "$Language" in
e*)
MustRunAsRoot="This script must be executed as root!"
EnterYourUsername="Enter your ( \e[36muser\e[0m ) name"
Warning="WARNING"
NoUsername="You didn't provide any username"
EnterUserPass="Enter password for user"
NoDisplaying="( will not display entered )"
ReenterUserPass="Reenter password for user"
EnterRootPass="Enter password for \e[1;31mroot\e[0m"
ReenterRootPass="Reenter password for \e[1;31mroot\e[0m"
DisplayDisks="Available disks"
EnterDiskToPart="Enter which disk you wish to use and/or partition"
Without="WITHOUT"
And="and"
Eg="eg"
Numbers="numbers"
Error="ERROR"
YouPicked="You picked"
DiskAccessError="which fdisk cannot access.\n Choose a disk again"
CheckInternet="Checking internet connection"
ConnectUsingWiFi="Would you like to use wifi connection"
Yn="Y/n"
NoInternet="There's no internet connection! \e[1;31m:(\e[0m Please, check the cable or your net device settings!
 This installation \e[1;37mNEEDS\e[0m internet conection to finish successfuly!"
ContinueOrCancel="Press \e[1;32mEnter\e[0m to continue or \e[1;31mCtrl\e[0m + \e[1;31mC\e[0m to cancel instalation"
PassEmpty="Password cannot be blank"
PassMismatch="Passwords do not match"
Welcome="Welcome to simplified installation of \e[1;36mArch Linux\e[0m"
WhyThisScript="This script is here to simplify Arch Linux install process"
YourRisk="YOU ARE USING IT AT YOUR OWN RISK"
InfoGathering="First, we'll pick some information. So, let's go"
WhichKeyLayout="Which keyboard layout would you like to use"
Croatian="Croatian"
English="English"
Other="Other"
Wrong="Wrong"
SetCroatian="Now you are using croatian"
SetAmerican="Now you are using american"
KeyboardLayout="keyboard layout"
EnterKeyboardLayout="Enter keyboard layout you wish to use after installation"
GermanEg="for german layout"
LayoutAfterInstall="After installation, keyboard layout will be set to"
WillBeErased=""
Yes="yes"
No="no"
EnterHostName="Enter hostname ( no spaces, just \e[1;32mEnter\e[0m for"
EnterDE="Enter a letter beside the DE you wish to install"
IllPickLater="None. I'll install DE or WM later"
AutoLoginAs="Would you like to use autologin for"
AtLogin="at login"
NumLockOn="Would you like to have Num Lock turned on $AtLogin"
WillBeOn="will be turned on"
WillBeOff="will be turned off"
NoDEorWMinstall="There won't be any DE or WM installation, so after base install you can\n do it by canceling reboot and reentering chroot enviroment manualy"
DEinstNotSel="No DE installaton selected"
yN="y/N"
HostName="Host name"
FormPart=""
KeyLayout="Keyboard"
InstallEnd="INSTALLATION ENDED"
EnjoyWith="Enjoy with your new"
UnmountAllPart="Unmounting all partitions..."
RebootIn="Rebooting in 5 seconds..."
;;
*)
MustRunAsRoot="Ovu skriptu morate pokrenuti kao root!"
EnterYourUsername="Upišite svoje ( \e[36mkorisničko\e[0m ) ime"
Warning="UPOZORENJE"
NoUsername="Niste upisali korisničko ime"
EnterUserPass="Upišite lozinku za korisnika"
NoDisplaying="( neće prikazati unos )"
ReenterUserPass="Ponovo upišite lozinku za korisnika"
EnterRootPass="Upišite lozinku za \e[1;31mroot\e[0m korisnika"
ReenterRootPass="Ponovo upišite lozinku za \e[1;31mroot\e[0m korisnika"
DisplayDisks="Dostupni diskovi"
EnterDiskToPart="Upišite koji disk želite koristiti i/ili patricionirati"
Without="BEZ"
And="i"
Eg="npr"
Numbers="brojki"
Error="GREŠKA"
YouPicked="Odabrali ste"
DiskAccessError="kojemu fdisk ne može pristupiti.\n Ponovite odabir diska"
CheckInternet="Provjeravam konekciju na internet"
ConnectUsingWiFi="Želite se spojiti bežično"
Yn="D/n"
NoInternet="Nema dostupne internet veze! \e[1;31m:(\e[0m Provjerite kabel ili postavke mrežnog uređaja!
 Da bi se uspješno obavila, ova instalacija \e[1;37mTREBA\e[0m vezu s internetom"
ContinueOrCancel="Pritisnite \e[1;32mEnter\e[0m za nastavak ili \e[1;31mCtrl\e[0m + \e[1;31mC\e[0m za prekid instalacije"
PassEmpty="Lozinka ne može biti prazna"
PassMismatch="Lozinke se ne podudaraju"
Welcome="Dobrodošli u pojednostavljenu instalaciju \e[1;36mArch Linuxa\e[0m"
WhyThisScript="Ova skripta je tu da vam olakša instalaciju Arch Linuxa"
YourRisk="KORISTITE JE NA VLASTITU ODGOVORNOST"
InfoGathering="Za početak, prikupit ćemo neke informacije. Pa, krenimo"
WhichKeyLayout="Koji raspored tipkovnice ( keyboard layout ) želite koristiti"
Croatian="Hrvatski"
English="Američki"
Other="Ostali"
Wrong="Neispravan"
SetCroatian="Postavljen je hrvatski"
SetAmerican="Postavljen je američki"
KeyboardLayout="raspored tipkovnice"
EnterKeyboardLayout="Upišite raspored tipkovnice koji želite koristiti nakon instalacije"
GermanEg="za njemački raspored"
LayoutAfterInstall="Raspored tipkovnice nakon instalacije bit će postavljen na"
WillBeErased=""
Yes="da"
No="ne"
EnterHostName="Upišite ime hosta ( bez razmaka, samo \e[1;32mEnter\e[0m za"
EnterDE="Upišite slovo pored DE-a koji želite instalalirati"
IllPickLater="Nijedan. Kasnije ću instalirati DE ili WM"
AutoLoginAs="Želite li biti automatski ulogirani kao"
AtLogin="pri logiranju"
NumLockOn="Želite li imati uključen Num Lock $AtLogin u sustav"
WillBeOn="bit će uključen"
WillBeOff="neće biti uključen"
NoDEorWMinstall="Neće biti instaliran nikakav DE ili WM, no nakon instalacije možete\n otkazati reboot i instalirati što želite ponovnim ulaskom u chroot okruženje"
DEinstNotSel="Niste odabrali instalaciju DE-a"
yN="d/N"
HostName="Ime hosta"
FormPart=""
KeyLayout="Tipkovnica"
InstallEnd="KRAJ INSTALACIJE"
EnjoyWith="Sretno uz novoinstalirani"
UnmountAllPart="Odmontiravanje svih particija..."
RebootIn="Reboot za 5 sekundi..."
;;
esac
X11Layouts="af al am ara at az ba bd be bg br brai bt bw by ca cd ch cm cn cz de dk ee epo es et fi fo fr gb ge gh gn gr hr hu ie il in iq ir is it jp ke kg kh kr kz la latam lk lt lv ma mao md me mk ml mm mn mt mv nec_vndr/jp ng nl no np ph pk pl pt ro rs ru se si sk sn sy th tj tm tr tw tz ua us uz vn za"
#==============================================================================#
function ENTER_KEYBOARD_LAYOUT {
clear
echo -e "\n $EnterKeyboardLayout\n\t( $Eg.\e[1;36m DE\e[0m $GermanEg )\n"
read Layout
Layout="${Layout,,}"
case "$X11Layouts" in
*$Layout*)
 echo -e "\n $LayoutAfterInstall \e[1;36m${Layout^^}\e[0m" && CONTINUE_OR_CANCEL
;;
*)
 echo -e "\n \e[31m*** $Error ***\e[0m\n\n $Wrong $KeyboardLayout!\n"
 sleep 2
 ENTER_KEYBOARD_LAYOUT
;;
esac
}

function USER_NAME {
clear
echo -e "\n $EnterYourUsername:\n"
read Korisnik
Korisnik="${Korisnik%% *}" # Ostavi samo prvu riječ
Korisnik="${Korisnik,,}" # Konverzija u lowercase
clear
if [ "$Korisnik" = "" ]; then
 echo -e "\n \e[1;36m* $Warning *\e[0m\n $NoUsername...\n"
 CONTINUE_OR_CANCEL
 USER_NAME
fi
}

function DEL_PASSWORDS {
Lozinka1=""
Lozinka2=""
Lozinka3=""
Lozinka4=""
}

function ENTER_USER_PASS {
clear
DEL_PASSWORDS
echo -e "\n $EnterUserPass \e[1;36m$Korisnik\e[0m $NoDisplaying:"
stty -echo
read Lozinka1
stty echo
if [ "$Lozinka1" = "" ]; then
 PASSWORD_EMPTY
 ENTER_USER_PASS
fi
echo -e "\n $ReenterUserPass \e[1;36m$Korisnik\e[0m $NoDisplaying:"
stty -echo
read Lozinka2
stty echo
if [ "$Lozinka1" = "$Lozinka2" ]; then
 LozinkaKorisnika="$Lozinka1\n$Lozinka2\n"
else
 PASSWORD_MISMATCH
 ENTER_USER_PASS
fi
}

function ENTER_ROOT_PASS {
clear
echo -e "\n $EnterRootPass $NoDisplaying:"
stty -echo
read Lozinka3
stty echo
if [ "$Lozinka3" = "" ]; then
 PASSWORD_EMPTY
 ENTER_ROOT_PASS
fi
echo -e "\n $ReenterRootPass $NoDisplaying:"
stty -echo
read Lozinka4
stty echo
if [ "$Lozinka3" = "$Lozinka4" ]; then
 RootLozinka="$Lozinka3\n$Lozinka4\n"
 DEL_PASSWORDS
else
 PASSWORD_MISMATCH
 ENTER_ROOT_PASS
fi
}

function PARTITIONING {
clear
echo -e "\n $DisplayDisks:"
lsblk | grep disk
echo -e "\n $EnterDiskToPart ( $Without \e[35m/dev/\e[0m $And $Without \e[35m$Numbers\e[0m, $Eg. \e[36msda\e[0m ):\n"
read Disk
Disk="${Disk,,}"
Disk="${Disk//'/dev/'/}"
echo -e "\n \e[1;31m* Posljednje upozorenje! *\n\e[0m\n Bit će particioniran \e[1;32m${Disk}\e[0m disk! \n"
CONTINUE_OR_CANCEL
umount /dev/${Disk}*
clear
echo -e "o\nn\np\n1\n\n+100M\nt\nc\nn\np\n2\n\n\nw" | fdisk -W always /dev/$Disk # Autoformatiranje
if [ $? != 0 ]; then
 clear
 echo -e "\n \e[1;31m* $Error *\e[0m\n\n $YouPicked \"$Disk\" disk $DiskAccessError!\n"
 CONTINUE_OR_CANCEL
 PARTITIONING
fi
echo -e "\n Formatiram boot particiju (/dev/${Disk}1)..."
mkfs.vfat /dev/${Disk}1
mkdir boot
echo -e " Montiram boot particiju (/dev/${Disk}1)...\n"
mount /dev/${Disk}1 boot
if [ $? != 0 ]; then
 echo -e "\n \e[1;31m* $Error *\e[0m\n"
 CONTINUE_OR_CANCEL
fi
echo -e "\n Formatiram root particiju (/dev/${Disk}2)..."
mkfs.ext4 -q /dev/${Disk}2
mkdir root
echo -e " Montiram root particiju (/dev/${Disk}2)...\n"
mount /dev/${Disk}2 root
if [ $? != 0 ]; then
 echo -e "\n \e[1;31m* $Error *\e[0m\n"
 CONTINUE_OR_CANCEL
fi
}

function DOWNLOADING {
clear
echo -e "\n Koju verziju Archa za RPi želiš preuzeti (\e[1;32m2 \e[31m(preporuka i za RPi3)\e[0m ili \e[33m3\e[0m)?"
read RPiV
case "$RPiV" in
2|3)
if [ -e ArchLinuxARM-rpi-$RPiV-latest.tar.gz ]; then
 echo -e "\n Pronađena ArchLinuxARM-rpi-$RPiV-latest.tar.gz datoteka...\n Želiš li upotrijebiti već postojeću datoteku? (D/n)"
 read Postojeca
 case "$Postojeca" in
 N*|n*)
  echo -e "\n Preuzimanje zadnje verzije ArchLinuxARM-a za RPi$RPiV..."
  wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-$RPiV-latest.tar.gz -O ArchLinuxARM-rpi-$RPiV-latest.tar.gz
 ;;
 esac
else
 echo -e "\n Preuzimanje zadnje verzije ArchLinuxARM-a za RPi$RPiV..."
 wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-$RPiV-latest.tar.gz -O ArchLinuxARM-rpi-$RPiV-latest.tar.gz
fi
clear
echo -e "\n Raspakiravam ArchLinuxARM-rpi-$RPiV-latest.tar.gz datoteku..."
bsdtar -xpf ArchLinuxARM-rpi-$RPiV-latest.tar.gz -C root
sync
mv root/boot/* boot
;;
*)
clear
echo -e "\n Ne postoji Arch Linux ARM za RPi verzije $RPiV!\nPokušajmo ponovo...\n"
CONTINUE_OR_CANCEL
DOWNLOADING
;;
esac
}

function CONTINUE_OR_CANCEL {
echo -e " $ContinueOrCancel..."
read -p ""
}

function PASSWORD_EMPTY {
clear
echo -e "\n \e[1;31m* $Error *\e[0m\n\n $PassEmpty!\n"
CONTINUE_OR_CANCEL
}

function PASSWORD_MISMATCH {
clear
echo -e "\n \e[1;31m* $Error *\e[0m\n\n $PassMismatch!\n"        
CONTINUE_OR_CANCEL
}
#==============================================================================#
setfont Lat2-Terminus16 # Postavljam font (podržava sva naša slova)
clear
if [ $UID != 0 ]; then
 clear
 echo -e "\n \e[1;31m *** $MustRunAsRoot *** \e[0m\n"
 exit
fi
echo -e "\n\e[36m *******************************************************************************\n\t$Welcome \e[36mby \e[1;36mCooleech\e[0m\t\e[36m\n *******************************************************************************\e[0m
\e[1;36m        A
       ARA
       RCRA  \e[0m$WhyThisScript!\e[1;36m
     ARCHCRA
    ARCHLHCRA  \e[31m* * * $Warning: $YourRisk * * *\e[0m\e[1;36m
   ARCHLILHCRA
  ARCHL   LHC    \e[0m$InfoGathering! \e[1;33m:)\e[0m\e[1;36m
 ARCHL     LHCRA
AR             RA
\e[0m\n
 $WhichKeyLayout?\n\n \e[36mh\e[0m = \e[36m$Croatian\e[0m\t( HR ) <= default\n\n \e[36me\e[0m = \e[36m$English\e[0m\t( US )\n\n \e[36mo\e[0m = \e[36m$Other\e[0m\t( ?? )\n"
read PostavTipki
case "$PostavTipki" in
h*|"")
 loadkeys croat # Postavi tipkovnicu na hrvatski layout
 Layout="hr"
 echo -e "\n \e[1;36mINFO:\e[0m $SetCroatian (\e[1;36m HR \e[0m) $KeyboardLayout.\n" && CONTINUE_OR_CANCEL
;;
e*)
 loadkeys us # Postavi tipkovnicu na američki layout
 Layout="us"
 echo -e "\n \e[1;36mINFO:\e[0m $SetAmerican (\e[1;36m US \e[0m) $KeyboardLayout.\n" && CONTINUE_OR_CANCEL
;;
*)
 loadkeys us # Postavi tipkovnicu na američki layout
 Layout="?"
 echo -e "\n \e[1;36mINFO:\e[0m $SetAmerican (\e[1;36m US \e[0m) $KeyboardLayout.\n" && CONTINUE_OR_CANCEL
;;
esac
clear
if [ "$Layout" = "?" ]; then
 ENTER_KEYBOARD_LAYOUT
fi
USER_NAME
ENTER_USER_PASS
ENTER_ROOT_PASS
PARTITIONING
DOWNLOADING
clear
echo -e "\n $EnterHostName \e[36m$Korisnik-RPi\e[0m ):\n"
read ImeHosta
ImeHosta="${ImeHosta// /}" # Ukloni razmake
ImeHosta="${ImeHosta//'@'/AT}"
if [ "$ImeHosta" = "" ]; then
 ImeHosta="$Korisnik-RPi"
fi
clear
echo -e "\n $EnterDE:\n\n \e[36mN\e[0m = \e[36m$IllPickLater\e[0m <= default\n\n \e[36mM\e[0m = \e[36mMATE\n\n X\e[0m = \e[36mXfce\n\n L\e[0m = \e[36mLXDE\e[0m\n"
read DEzaInst
DEzaInst="${DEzaInst,,}"
case "$DEzaInst" in
m*|x*|l*)
 clear
 echo -e "\n $AutoLoginAs \e[1;36m$Korisnik\e[0m? ( $yN )"
 read AutoLogin
 AutoLogin="${AutoLogin,,}"
 echo -e "\n $NumLockOn? ( $Yn )"
 read NumLock
;;
*)
 echo -e "\n \e[1;36mINFO:\e[31m $NoDEorWMinstall. ;)\e[0m\n"
 NumLock="$No ( $DEinstNotSel )" 
 CONTINUE_OR_CANCEL
;;
esac

# DRUGI DIO INSTALACIJE PREKO BASH.BASHRC DATOTEKE IĐE ODALEN
#==============================================================================#
echo "#!/bin/bash
################
# ALRPiS v1.01 #
# By Cooleech  #
################
setfont Lat2-Terminus16 # Postavi font (podržava sva naša slova)
if [ \$UID != 0 ]; then
 echo -e \"\n \e[1;31m*** GREŠKA ***\n\n \e[0mNiste se ulogirali kao \e[1;32mroot\e[0m korisnik.\n\n Povežite vaš RPi na internet i ulogirajte se kao \e[1;32mroot\e[0m s lozinkom \e[1;32mroot\e[0m\n (ne s onom koju ste vi postavili) kako bi uspješno nastavili instalaciju.\n\"
 exit
fi

function CONTINUE_OR_CANCEL {
echo -e \" $ContinueOrCancel...\"
read -p \"\"
}

function CHECK_NET {
clear
echo -e \"\n Provjeravam povezanost na internet...\n \e[1;33m(Ctrl + C za prekid povezivanja/instalacije)\e[0m\n\"
ping -c3 google.com > /dev/null
if [ \$? != 0 ]; then
 echo -e \"\n Izgleda da povezivanje putem žice nije dostupno.\n Pokušat ćemo bežično povezivanje...\n\"
 CONTINUE_OR_CANCEL
 wifi-menu -o
 if [ \$? != 0 ]; then
  echo -e \"\n Bežično povezivanje nije pronađeno. Pokušat ćemo žično (opet).\n\"
  CONTINUE_OR_CANCEL
  CHECK_NET
 fi
else
 clear
 echo -e \"\n \e[1;32mPovezano na internet! \e[0m\n\"
 sleep 2
fi
}

CHECK_NET
clear
echo -e \"\n Uređivanje pacmana..\n\"
sed -i 's/#Color/Color/' /etc/pacman.conf
echo -e \"\n Osvježavanje keyringa...\n\"
pacman -Sy --noconfirm archlinux-keyring
if [ \$? != 0 ]; then
 echo -e \"\n \e[1;31m* $Error *\e[0m\n\"
 CONTINUE_OR_CANCEL
fi
echo \"Uređujem config datoteku\"
echo -e \"dtparam=audio=on\namixer cset numid=3 0\ndisable_overscan=1\n#hdmi_drive=2 # Ako aplikacija baš traži HDMI audio...\n#audio_pwm_mode=2 # Ako je analogni izlaz distorziran\n#arm_freq=800\n#arm_freq_min=100\n#core_freq=300\n#core_freq_min=75\n#sdram_freq=400\n#over_voltage=0\" >> /boot/config.txt
echo -e \"$RootLozinka\" | passwd
RootLozinka=\"\"
useradd -m -g users -G wheel,storage,power -s /bin/bash $Korisnik
echo -e \"$LozinkaKorisnika\" | passwd $Korisnik
LozinkaKorisnika=\"\"
echo -e \"\n Uređivanje pacman.conf datoteke...\"
sed -i 's/#Color/Color/g' /etc/pacman.conf
echo -e \"\n Generiranje jezika...\"
sed -i 's/#en_IE/en_IE/g' /etc/locale.gen
sed -i 's/#hr_HR/hr_HR/g' /etc/locale.gen
locale-gen
echo \"LANG=en_IE.UTF-8\" > /etc/locale.conf
export LANG=en_IE.UTF-8
echo -e \"\n Postavljam keymap u vconsole.conf...\"
echo -e \"KEYMAP=croat\" > /etc/vconsole.conf # <=== Triba dodat opciju za odabir! ===
echo -e \"\n Postavljam zonu lokalnog vremena...\"
#timedatectl set-timezone Zone/SubZone
ln -sf /usr/share/zoneinfo/Europe/Zagreb /etc/localtime
echo -e \"\n Postavljam hwclock...\"
hwclock --systz --localtime
echo -e \"\n Postavljam ime hosta...\"
echo \"$ImeHosta\" > /etc/hostname
echo -e \" Preuzimam i instaliram osnovne pakete (za svaki DE)\"
Paketi1=\"alsa-firmware alsa-plugins alsa-utils bc dialog dnsmasq dosfstools firefox flac gksu gstreamer0.10-plugins gvfs mtools net-tools network-manager-applet networkmanager-dispatcher-ntpd ntfs-3g ntp omxplayer-git p7zip perl-data-dump pulseaudio pulseaudio-alsa sudo ttf-droid ttf-freefont unrar unzip wget wireless_tools wpa_actiond wpa_supplicant xcursor-vanilla-dmz xdg-user-dirs xf86-input-keyboard xf86-input-mouse xf86-video-fbturbo-git xorg-server xorg-server-utils xorg-xclock xorg-xinit xterm vorbis-tools zip\"
pacman -Sy --noconfirm \$Paketi1
if [ \$? != 0 ]; then
 echo -e \"\n \e[1;31m* $Error *\e[0m\n Jedan ili više paketa nisu uspješno preuzeti. :(\n\"
 CONTINUE_OR_CANCEL
else
 Paketi1=\"\"
fi
echo -e \"\n Postavljam tipkovnicu na $Layout layout...\"
echo -e \"Section \\\"InputClass\\\"\n\tIdentifier \\\"system-keyboard\\\"\n\tMatchIsKeyboard \\\"on\\\"\n\tOption \\\"XkbModel\\\" \\\"pc105\\\"
\tOption \\\"XkbLayout\\\" \\\"$Layout\\\"\n\tOption \\\"XkbVariant\\\" \\\"\\\"\nEndSection\" > /etc/X11/xorg.conf.d/20-keyboard.conf
echo -e \"\n Podešavam gvfs...\"
echo -e \"polkit.addRule(function(action, subject) {\n\tif (action.id.indexOf(\\\"org.freedesktop.udisks2.\\\") == 0){\n\t\treturn polkit.Result.YES;\n\t}\n});\" > /usr/share/polkit-1/rules.d/10-drives.rules
echo -e \"\n Podešavam vrijeme...\"
ntpd -qg # <=== NEPOTREBNO?
case \"$DEzaInst\" in
m*|x*|l*)
 echo -e \"\n Instalacija gnome-keyringa i teme gnome-themes-standard...\"
 Paketi2=\"gnome-keyring gnome-themes-standard\"
 pacman -Sy --noconfirm \$Paketi2
 if [ \$? != 0 ]; then
  echo -e \"\n \e[1;31m* $Error *\e[0m\n Jedan ili dva paketa nisu uspješno preuzeti. :(\n\"
  CONTINUE_OR_CANCEL
 else
  Paketi2=\"\"
 fi
 echo -e \"\n Omogućujem korištenje gnome-keyringa...\"
 echo -e \"#!/bin/bash\n\nsource /etc/X11/xinit/xinitrc.d/30-dbus\neval \\\$(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)\nexport SSH_AUTH_SOCK\" > /home/$Korisnik/.xinitrc
;;
esac
echo -e \"\n Nadopuna za .xinitrc...\"
echo -e \"\nif [ -d /etc/X11/xinit/xinitrc.d ]; then\n for f in /etc/X11/xinit/xinitrc.d/*; do\n   [ -x \\\"\\\$f\\\" ] && . \\\"\\\$f\\\"\n done\n unset f\nfi\n\" >> /home/$Korisnik/.xinitrc
echo -e \"\n Konfiguriram Network Manager...\"
systemctl enable NetworkManager
systemctl enable NetworkManager-dispatcher.service #&& systemctl enable ModemManager.service <=== NEPOTREBNO?
echo -e \"\n Dodajem korisnika $Korisnik u network grupu...\"
gpasswd -a $Korisnik network
echo -e \"\n Dodajem policy...\"
echo -e \"polkit.addRule(function(action, subject) {\n\tif (action.id.indexOf(\\\"org.freedesktop.NetworkManager.\\\") == 0 && subject.isInGroup(\\\"network\\\")) {
	\treturn polkit.Result.YES;\n\t}\n});\" > /etc/polkit-1/rules.d/50-org.freedesktop.NetworkManager.rules
sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers # ...and sudo for all
case \"$DEzaInst\" in
m*)
 echo -e \"\n Pokrećem instalaciju MATE-a...\"
 Paketi3=\"dconf-editor deadbeef gtk-engine-murrine lxdm mate mate-extra vlc zenity\"
 pacman -Sy --noconfirm \$Paketi3
 if [ \$? != 0 ]; then
  echo -e \"\n \e[1;31m* $Error *\e[0m\n Jedan ili više paketa nisu uspješno preuzeti. :(\n\"
  CONTINUE_OR_CANCEL
 else
  Paketi3=\"\"
 fi
 systemctl enable lxdm.service
 sed -i 's/startlxde/mate-session/g' /etc/lxdm/lxdm.conf
;;
x*)
 echo -e \"\n Pokrećem instalaciju Xfce4 DE-a...\"
 Paketi3=\"deadbeef lxdm thunar-archive-plugin thunar-volman xarchiver xfce4 xfce4-goodies xfce4-notifyd vlc zenity\"
 pacman -Sy --noconfirm \$Paketi3
 if [ \$? != 0 ]; then
  echo -e \"\n \e[1;31m* $Error *\e[0m\n Jedan ili više paketa nisu uspješno preuzeti. :(\n\"
  CONTINUE_OR_CANCEL
 else
  Paketi3=\"\"
 fi
 systemctl enable lxdm.service
 sed -i 's/startlxde/startxfce4/g' /etc/lxdm/lxdm.conf
 echo -e \"\n Modificiram desktop ikone Xfce4 DE-a...\"
 echo -e \"style \\\"xfdesktop-icon-view\\\" {\n\tXfdesktopIconView::label-alpha = 0
	XfdesktopIconView::shadow-x-offset = 1\n\tXfdesktopIconView::shadow-y-offset = 1
	XfdesktopIconView::shadow-color = \\\"#000000\\\"\n\tXfdesktopIconView::selected-shadow-x-offset = 0
	XfdesktopIconView::selected-shadow-y-offset = 0\n\tXfdesktopIconView::selected-shadow-color = \\\"#000000\\\"
	fg[NORMAL] = \\\"#ffffff\\\"\n\tfg[SELECTED] = \\\"#ffffff\\\"\n\tfg[ACTIVE] = \\\"#ffffff\\\" }
	widget_class \\\"*XfdesktopIconView*\\\" style \\\"xfdesktop-icon-view\\\"\" >> /home/$Korisnik/.gtkrc-2.0
;;
l*)
 echo -e \"\n Pokrećem instalaciju LXDE-a...\"
 Paketi3=\"deadbeef galculator gnome-mplayer leafpad lxde lxdm obconf xarchiver zenity\"
 pacman -Sy --noconfirm \$Paketi3
 if [ \$? != 0 ]; then
  echo -e \"\n \e[1;31m* $Error *\e[0m\n Jedan ili više paketa nisu uspješno preuzeti. :(\n\"
  CONTINUE_OR_CANCEL
 else
  Paketi3=\"\"
 fi
 systemctl enable lxdm.service
;;
*)
 echo -e \"\n \e[1;36mINFO:\e[31m $DEinstNotSel!\e[0m\"
;;
esac
case \"$NumLock\" in
d*)
 echo -e \"\n Uključujem numlock pri logiranju...\"
 sed -i 's/# numlock=0/numlock=1/g' /etc/lxdm/lxdm.conf
;;
esac
if ! [ -d /home/$Korisnik/Documents ]; then # Dodaj korisničke mape ako ne postoje
 mkdir /home/$Korisnik/Documents
fi
if ! [ -d /home/$Korisnik/Downloads ]; then
 mkdir /home/$Korisnik/Downloads
fi
if ! [ -d /home/$Korisnik/Music ]; then
 mkdir /home/$Korisnik/Music
fi
if ! [ -d /home/$Korisnik/Pictures ]; then
 mkdir /home/$Korisnik/Pictures
fi
if ! [ -d /home/$Korisnik/Public ]; then
 mkdir /home/$Korisnik/Public
fi
if ! [ -d /home/$Korisnik/Templates ]; then
 mkdir /home/$Korisnik/Templates
fi
if ! [ -d /home/$Korisnik/Videos ]; then
 mkdir /home/$Korisnik/Videos
fi
echo -e \"\n Dodajem aliase...\"
echo -e \"alias la='ls -a'\nalias ll='ls -la'\nalias grep='grep --color=auto'\nalias n='sudo pacman -Syu'\nalias i='sudo pacman -S'\nalias u='sudo pacman -Rs'\nalias t='pacman -Ss'\" >> /etc/bash.bashrc
echo -e \"\n Predajem vlasništvo /home/$Korisnik mape korisniku $Korisnik...\"
chown -R $Korisnik /home/$Korisnik
echo -e \"\n Radim xdg-user-dirs-update...\"
xdg-user-dirs-update --force --set DOCUMENTS /home/$Korisnik/Documents # Osvježi xdg-user-dirs
xdg-user-dirs-update --force --set DOWNLOAD /home/$Korisnik/Downloads
xdg-user-dirs-update --force --set MUSIC /home/$Korisnik/Music
xdg-user-dirs-update --force --set PICTURES /home/$Korisnik/Pictures
xdg-user-dirs-update --force --set PUBLICSHARE /home/$Korisnik/Public
xdg-user-dirs-update --force --set TEMPLATES /home/$Korisnik/Templates
xdg-user-dirs-update --force --set VIDEOS /home/$Korisnik/Videos
case \"$AutoLogin\" in
d*|y*)
 echo -e \"\n Postavljam auto-login...\"
 sed -i \"s/# autologin=dgod/autologin=$Korisnik/g\" /etc/lxdm/lxdm.conf
;;
esac
if [ -e /etc/lxdm/lxdm.conf ]; then
 sed -i 's/# session/session/g' /etc/lxdm/lxdm.conf
fi
clear
sed -i 's|sh /etc/ALRPiS.sh||g' /etc/bash.bashrc # Pobriši pokretanje autoinstalacije
rm /etc/ALRPiS.sh
userdel -r alarm
# Provjera neuspjelih paketa
if [ \"\$Paketi1\" != \"\" ]; then
 echo -e \"\n Neuspješno instalirani paketi (ne nužno svi):\n\n \$Paketi1\n\n Možete pokušati instalirati ih ručno.\"
 CONTINUE_OR_CANCEL
fi
if [ \"\$Paketi2\" != \"\" ]; then
 echo -e \"\n Neuspješno instalirani paketi (ne nužno svi):\n\n \$Paketi2\n\n Možete pokušati instalirati ih ručno.\"
 CONTINUE_OR_CANCEL
fi
if [ \"\$Paketi3\" != \"\" ]; then
 echo -e \"\n Neuspješno instalirani paketi (ne nužno svi):\n\n \$Paketi3\n\n Možete pokušati instalirati ih ručno.\"
 CONTINUE_OR_CANCEL
fi
# Kraj provjere neuspjelih paketa
echo -e \"\n $UnmountAllPart\"
umount boot root
clear
echo -e \"\n\e[36m*********************************\n*\t\e[37m$InstallEnd\e[36m\t*\n*********************************\e[0m\n\n $EnjoyWith \e[1;36mArch Linux \e[1;33m:)\e[0m\n\"
sleep 5 | echo -e \"\n $RebootIn\"
reboot" > root/etc/ALRPiS.sh
echo "sh /etc/ALRPiS.sh" >> root/etc/bash.bashrc
clear
echo -e "\n Odmontiravam /dev/${Disk} i brišem mape boot i root..."
umount /dev/${Disk}*
rm -rf {b,r}oot # Ukloni mape boot i root
clear
echo -e "\n \e[1;32m*** PRVI DIO INSTALACIJE JE GOTOV! ***\e[0m\n\n Sada ubacite SD karticu u vaš RPi koji je potrebno povezati na internet.\n Uključite vaš RPi, ulogirajte se kao \e[1;33mroot\e[0m korisnik koristeći defaultnu (\e[33mroot\e[0m)\n lozinku. \e[1;32mVaša root lozinka, koju ste prethodno postavili, \e[33mjoš nije u uporabi.\e[0m\n\n Skripta će provjeriti povezanost RPi-a na internet kako bi se mogla nastaviti\n instalacija. Ako ne pronađe žičnu vezu, automatski će potražiti bežično\n povezivanje ako vaš RPi posjeduje Wi-Fi modul (kao, primjerice, RPi3).\n\n Logiranjem kao root korisnik \e[1;32mAUTOMATSKI ćete pokrenuti nastavak instalacije\e[0m.\n\n Slobodno zatvorite ovaj prozor (ili stisnite Enter). Čitamo se uskoro...  \e[1;33m;-\e[1;31m)\e[0m\n"
read -p ""
exit
