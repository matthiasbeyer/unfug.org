#!/usr/bin/env ruby

require 'ostruct'

class Talk < Struct.new(:date, :title, :speaker)
end

TALKS = [

  Talk.new(nil, "IPv6", [ "Jochen Haemmerle" ]),
  Talk.new(nil, "Versionskontrolle mit Subversion", [ "Jan Schmidle" ]),
  Talk.new(nil, "Wikipedia die groesste und freie Online Enzyklopaedie", [ "Michael Diederich" ]),
  Talk.new(nil, "Key Signing Party", [ "Florian Buhl" ]),
  Talk.new(nil, "XHTML und CSS", [ "Jan Sroka" ]),
  Talk.new(nil, "Lex und Yacc", [ "Hagen Paul Pfeifer" ]),
  Talk.new(nil, "BIND und DNSSec", [ "Benjamin Krill" ]),
  Talk.new(nil, "Einfuehrung in Quantencomputing", [ "Jan Schlemmer" ]),
  Talk.new(nil, "Reverse Engineering", [ "Hagen Paul Pfeifer" ]),
  Talk.new(nil, "WLAN-Antennenbau", [ "Michael Heller", "Jochen Haemmerle" ]),
  Talk.new(nil, "Traffic Shaping", [ "Tobias Geiger" ]),
  Talk.new(nil, "WebServices", [ "Jan Sroka" ]),
  Talk.new(nil, "JABBER", [ "Michael Schaefer" ]),
  Talk.new(nil, "Editoren", [ "Thomas Steimann" ]),
  Talk.new(nil, "Mac OS X", [ "Michael Heller" ]),
  Talk.new(nil, "Einfuehrung Usenet, SSH und Screen", [ "M. Diederich", "F.  Westphal", "S. Krist", "S. Siewior" ]),
  Talk.new(nil, "Regular Expressions", [ "Thilo Uttendorfer" ]),
  Talk.new(nil, "Scanning", [ "Jan Sroka" ]),
  Talk.new(nil, "Consolentools - bash, vim, mutt, slrn", [ "Hagen Paul Pfeifer" ]),
  Talk.new(nil, "Samba", [ "Marcin Ladecki" ]),
  Talk.new(nil, "Wireless lans und ipsec", [ "Marcus Benedix" ]),
  Talk.new(nil, "Screen und SSH", [ "Alexander Prack" ]),
  Talk.new(nil, "Samba und LDAP", [ "Alexander Prack" ]),
  Talk.new(nil, "Shell-Scripting", [ "Chandramohan Neelakantan" ]),
  Talk.new(nil, "Debian Linux Installation", [ "Michael Riebe" ]),
  Talk.new(nil, "Samba", [ "Wolfgang Zipfel" ]),
  Talk.new(nil, "qmail", [ "Romeo Kienzler" ]),
  Talk.new(nil, "Installation- und Konfiguration von {Open|Free|Net}BSD", [ "Marcus Benedix", "Pia Gerhardt" ]),
  Talk.new(nil, "Advanced-Linux-Installation", [ "M. Lohrer, M. Schaetzke" ]),
  Talk.new(nil, "Linux-Installation", [ "Andreas Schlenkr" ]),
  Talk.new(nil, "Intrusion Detection", [ "Thorsten Ziegler" ]),
  Talk.new(nil, "Linux Grundinstallation", [ "Fabian Doerk" ]),
  Talk.new(nil, "QoS", [ "Adrian Woizik" ]),
  Talk.new(nil, "Sicherheit in Netzen, bei Betriebssystemen und fuer Anwender", [ "Marcus Benedix" ]),
  Talk.new(nil, "Paketfilter - ipchains, iptables", [ "Michael Schaetzke" ]),
  Talk.new(nil, "Firewall - Grundlagen und Konzepte", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "(Open|Free|Net)BSD-Installation", [ "Marcus Benedix" ]),
  Talk.new(nil, "Failover Services/Clustering/Load Balancing", [ "Andreas Schlenk" ]),
  Talk.new(nil, "Bufferoverflows", [ "Andreas Schlenk" ]),
  Talk.new(nil, "Bind und Co.", [ "Thorsten Ziegler" ]),
  Talk.new(nil, "kickstartfiles", [ "Tobias Marx" ]),
  Talk.new(nil, "Dialup unter Linux (ppp/ISDN)", [ "Steffen Troescher" ]),
  Talk.new(nil, "IPv6 - the next generation", [ "Adrian Woizik" ]),
  Talk.new(nil, "Network Flight Recorder (NFR) unter OpenBSD", [ "Christian Limberger" ]),
  Talk.new(nil, "Bufferoverflows", [ "Andreas Schlenk" ]),
  Talk.new(nil, "Concurrent Versions System (CVS)", [ "Thorsten Ziegler" ]),
  Talk.new(nil, "Masquerading + Network Address Translation", [ "Anne Fink" ]),
  Talk.new(nil, "Kernel kompilieren", [ "Andreas Schlenk" ]),
  Talk.new(nil, "Linux-Installation", [ "Andreas Grosse, Michael Lohrer" ]),
  Talk.new(nil, "Netfilter", [ "Alexander Meisel" ]),
  Talk.new(nil, "apache (LAMP-Vortrag)", [ "Marc Loeffler" ]),
  Talk.new(nil, "qmail", [ "Alexander Zimmerer" ]),
  Talk.new(nil, "AMaViS", [ "Rainer Link" ]),
  Talk.new(nil, "Load-Balancing", [ "Alexander Meisel" ]),
  Talk.new(nil, "Samba", [ "Andreas Schlenk" ]),
  Talk.new(nil, "Installation FreeBSD", [ "Helmut Kreft" ]),
  Talk.new(nil, "Review zu Chaos-Communication-Camp 1999", [ "A. Schlenk", "H. Kreft" ]),
  Talk.new(nil, "Linux-Installation", [ "Wolfgang Braun" ]),
  Talk.new(nil, "Firewall mit ipfwadm", [ "Jens Krabbenhoeft" ]),
  Talk.new(nil, "awk", [ "Ralf Neeb" ]),
  Talk.new(nil, "Routing", [ "Ralf Neeb" ]),
  Talk.new(nil, "WWW - SQL-Schnittstelle", [ "Thorsten Ziegler" ]),
  Talk.new(nil, "X-Server / Windowmanager", [ "Andreas Schlenk" ]),
  Talk.new(nil, "Linux-Installation", [ "Andreas Schlenk" ]),
  Talk.new(nil, "Nachlese zum 5. Internationalen Linux Kongress in Koeln", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "Shellprogrammierung, sed, awk", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "Firewalls mit Linux selbstgebaut", [ "Wolfgang Braun" ]),
  Talk.new(nil, "Python: Threads, Networking und persistente Daten in Python", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "Wie funktioniert eigentlich: RPM", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "Einfuehrung in  Linux (Installation, Konfiguration,...)", [ "Alex Meisel" ]),
  Talk.new(nil, "Wie funktioniert eigentlich: ATM", [ "Axel Eble" ]),
  Talk.new(nil, "PGP in der Praxis", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "Security-Tools (nicht nur) fuer Unix", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "Wie funktioniert (und was ist) eigentlich: MPEG 2 Layer 3", [ "Tobias Klausmann" ]),
  Talk.new(nil, "Linux - Einfuehrung und Installation", [ "Alex Meisel" ]),
  Talk.new(nil, "Linux in Real-Time Anwendungen", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "Bericht vom Linux-Kongress 97", [ "Alex Meisel" ]),
  Talk.new(nil, "Einfuehrung in LaTeX", [ "Christoph Reich" ]),
  Talk.new(nil, "Inside Python", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "Wie funktioniert eigentlich: Usenet", [ "Christoph Hartmann" ]),
  Talk.new(nil, "Wie funktioniert eigentlich: EMail", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "awk und sed und was man sonst noch so zum Leben mit Unix braucht", [ "Mirko Dziadzka" ]),
  Talk.new(nil, "Inside Perl", [ "Axel Eble" ]),

  Talk.new(2006, "IPv6", [ "Felix Krohn" ]),
  Talk.new(2006, "Python", [ "Dominik Jall" ]),
  Talk.new(2006, "Cell Processor Computing", [ "Benjamin Krill" ]),
  Talk.new(2006, "Free NX", [ "Florian Schermer" ]),
  Talk.new(2006, "Web Security", [ "Jan Schmidle" ]),
  Talk.new(2006, "Buffer Overflows", [ "Florian Westphal" ]),
  Talk.new(2006, "VIM", [ "Stefan Krist" ]),
  Talk.new(2006, "PHP 5", [ "Alexander Lais" ]),
  Talk.new(2006, "Effektive C Programmierung", [ "Hagen Paul Pfeifer" ]),
  Talk.new(2006, "Key Signing Party", [ "Benjamin Bjoern Bratkus" ]),
  Talk.new(2006, "Kurzvortraege/Pimp my Linux Box 2", [ "UnFUG Aktivisten" ]),


  Talk.new(2005, "Abenteuer Vielzeiler / Literarisches Code Duo", [ "Hagen Paul Pfeifer", "Florian Westphal" ]),
  Talk.new(2005, "SPAM Erkennungsstrategien (Erkennung und Analyse)", [ "Jens Baitinger" ]),
  Talk.new(2005, "OpenSSL Programmierung", [ "Florian Westphal" ]),
  Talk.new(2005, "LaTeX", [ "Alexander Naegele" ]),
  Talk.new(2005, "Das semantische Web", [ "Tobias Walter" ]),
  Talk.new(2005, "OpenWrt", [ "Marc McGuiness" ]),
  Talk.new(2005, "Grid Computing", [ "Christoph Reich" ]),
  Talk.new(2005, "Verschwoerungstheorien", [ "Martina Mattes", "Anja Troendlin-Ehrler" ]),
  Talk.new(2005, "Pimp my x86 - Pimp my Linux Box", [ "UnFUG Aktivisten" ]),
  Talk.new(2005, "SSH und screen", [ "Christian Koerner" ]),
  Talk.new(2005, "Perl 6", [ "Hagen Paul Pfeifer" ]),


  Talk.new(2004, "Verteilte Administration mit STAF", [ "Tobias Walter" ]),
  Talk.new(2004, "IT-Grundschutz Audits (BSI)", [ "Marc Mc Guinness" ]),
  Talk.new(2004, "Bluetooth und seine schwarzen Zaehne", [ "Hagen Paul Pfeifer" ]),
  Talk.new(2004, "Die Kunst der Datenverschleierung", [ "Marc Mc Guinness" ]),
  Talk.new(2004, "Key Signing Party", [ "Benjamin Bjoern Bratkus" ]),
  Talk.new(2004, "Stealth Firewalling", [ "Stefan Wenigmann" ]),
  Talk.new(2004, "Kernel- und UserSpace Debugging Techniken", [ "Hagen Paul Pfeifer" ]),

  Talk.new("30.03.2006", "Organisationstreffen",                          []),
  Talk.new("06.04.2006", "Filmabend",                                     []),
  Talk.new("13.04.2006", "PGP Keysigning & CAcert Assurance Party",       [ "Tobias Walter" ]),
  Talk.new("20.04.2006", "NetBoot mit ISOLinux",                          [ "Hagen Paul Pfeifer" ]),
  Talk.new("27.04.2006", "Unix Netzwerkstack Implementierungen",          [ "Hagen Paul Pfeifer" ]),
  Talk.new("04.05.2006", "mod_rewrite",                                   [ "Tobias Walter" ]),
  Talk.new("11.05.2006", "ASCII-Art",                                     [ "Michael Stegk"]),
  Talk.new("18.05.2006", "Ruby",                                          [ "Oliver Korovlejvic"]),
  Talk.new("24.05.2006", "Embedded Systems/Programming",                  [ "Sven Gregori"]),
  Talk.new("31.05.2006", "sed/awk/regex-Einfuehrung", ["Stefan Krist"]),
  Talk.new("14.06.2006", "OpenVPN", ["Jochen Haemmerle"]),
  Talk.new("22.06.2006", "Virtualisierung", ["Michael Schaefer" ]),
  Talk.new("29.06.2006", "Pimp my Unix",                                  []),

  Talk.new("19.10.2006", "IRC, News, e-mail, Netiquette: Richtig cybersex'ln", [ "Hagen Paul Pfeifer", "Tobias Hagen", "Felix Krohn"]),
  Talk.new("26.10.2006", "ScummVM, DosBox, D-Fend",                       ["Thomas Fischer"]),
  Talk.new("02.11.2006", "XEN",                                           ["Felix Krohn"]),
  Talk.new("09.11.2006", "Verwaltung von Root-Servern",                   ["Benjamin Liebe"]),
  Talk.new("16.11.2006", "Aenderung: Web Application Firewalls",           ["Jan Schmidle"]),
  Talk.new("23.11.2006", "High Performance Networking",                   ["Hagen Paul Pfeifer"]),
  Talk.new("30.11.2006", "Linux Kernelspace-Programmierung",              [ "Benedikt Waldvogel"]),
  Talk.new("07.12.2006", "Datenschutz und Recht: TKUeV, TKG, ...",        ["Michael Stegk"]),
  Talk.new("14.12.2006", "Paketmanagement: Einstimmung aufs Pakete-packen", ["Alex Guenther"]),
  Talk.new("21.12.2006", "Netzwerkfunktionalitaet unter Mac OS X",        ["Philipp Boeser"]),
  Talk.new("11.01.2007", "Firewalling und andere Spielereien mit iptables", ["Janosch Siller", "Christian"]),
  Talk.new("18.01.2007", "Pimp my Unix",                                  []),

  Talk.new("05.04.2007", "Video-Abend",                                   [ "(alle)" ]),
  Talk.new("12.04.2007", "Powerpoint-Karaoke",                            [ "Michael Stegk" ]),
  Talk.new("19.04.2007", "Hardware",                                      [ "Thomas Fischer" ]),
  Talk.new("26.04.2007", "Dynamische Speicherverwaltung",                 [ "Florian Westphal" ]),
  Talk.new("03.05.2007", "FreeWRT",                                       [ "Phil Sutter" ]),
  Talk.new("10.05.2007", "IPv6",                                          [ "Philipp Zeuner" ]),
  Talk.new("24.05.2007", "Netzboot, PXE, LTP",                            [ "Philipp Boeser" ]),
  Talk.new("14.06.2007", "udev and the mysteries of /sys filesystem",     [ "Phil Sutter" ]),
  Talk.new("21.06.2007", "Virtual Machines unter der Haube",              [ "Alexander Lais" ]),
  Talk.new("28.06.2007", "SELinux",                                       [ "Stefan Schulze Frielinghaus" ]),

  Talk.new("18.10.2007", "Organisationstreffen", []),
  Talk.new("25.10.2007", "Pimp my x86_64", ["Aktivisten"]),
  Talk.new("08.11.2007", "Mail User Agent Setups", ["Phil Sutter"]),
  Talk.new("15.11.2007", "Linux und Realtime", ["Florian Westphal"]),
  Talk.new("22.11.2007", "Highspeed Network Processing for Gigabit Ethernet Link Speed and Beyond (a.k.a HNPfGELSaB)", ["Hagen Paul Pfeier"]),
  Talk.new("29.11.2007", "GIT - The Stupid Content Tracker", ["Florian Westphal"]),
  Talk.new("06.12.2007", "Regular Expressions", ["Alexander Lais"]),
  Talk.new("13.12.2007", "Docbook", ["Alexander Guenther"]),
  Talk.new("20.12.2007", "Paketmanagement v2.0", ["Alexander Guenther"]),
  Talk.new("10.01.2008", "Aenderung: LaTeX Tipps und Tricks", ["Hagen Paul Pfeifer"]),
  Talk.new("17.01.2008", "Aenderung: A journey through sk_buff and net_device", ["Florian Westphal", "Hagen Paul Pfeifer"]),
  Talk.new("24.01.2008", "Keysigning/Cacert-Party", ["Felix Krohn"]),

  Talk.new("27.03.2008", "Organisationstreffen", []),
  Talk.new("03.04.2008", "Esoterische Programmiersprachen", [ "Sven Gregori" ]),
  Talk.new("10.04.2008", "Frickeln", [ "Phil Sutter, Sven Gregori" ]),
  Talk.new("17.04.2008", "Aenderung: Network hacking", []),
  Talk.new("24.04.2008", "Iptables", [ "Alex Passfall" ]),
  Talk.new("08.05.2008", "C++ Metaprogrammierung", []),
  Talk.new("29.05.2008", "FPGA Programmierung", [ "Sven Gregori" ]),
  Talk.new("05.06.2008", "Google Android", [ "Valentin v. Seggern" ]),
  Talk.new("12.06.2008", "Musik unter Linux", []),
  Talk.new("19.06.2008", "GnuPG", [ "Phil Sutter" ]),
  Talk.new("26.06.2008", "Keysigning/CAcert-Party", []),
  Talk.new("03.07.2008", "Pimp my x86_64", [ "Aktivisten" ]),

  Talk.new("26.03.2009", "Organisationstreffen", []),
  Talk.new("02.04.2009", "Virtuelle Machinen", [ "Christian Weichel" ]),
  Talk.new("16.04.2009", "Beginers-TeXtal", [ "Benjamin Lucke, Matthias Schaff" ]),
  Talk.new("23.04.2009", "VI - Magic", [ "Dominik Bacher" ]),
  Talk.new("30.04.2009", "Gentoo and Window Manager showcase", [ "Arkosch", "Aktivisten" ]),
  Talk.new("28.05.2009", "Privatssphaere im Netz", [ "Matthias Schaff" ]),
  Talk.new("07.05.2009", "Functional Programming", [ "Christian Weichel" ]),
  Talk.new("14.05.2009", "IPTables", [ "Markus Schaeffer" ]),
  Talk.new("04.06.2009", "Unknown", [ "Ciro" ]),
  Talk.new("11.06.2009", "Developing for Android", [ "Christian Weichel" ]),

  Talk.new("01.10.2009", "Organisationstreffen", []),
  Talk.new("08.10.2009", "Linux Grundlagen / Workshop", [ "Mike Faath", "Alex Passfall", "Martin Lowinski", "Philipp Boeser"]),
  Talk.new("15.10.2009", "C# Databindings", [ "max" ]),
  Talk.new("22.10.2009", "TeXTalk", [ "blacki", "benny" ]),
  Talk.new("29.10.2009", "The Unix way", [ "Michael Stegk" ]),
  Talk.new("05.11.2009", "How to brick my Wii", [ "Alex Passfall" ]),
  Talk.new("12.11.2009", "Neuronale Netze", [ "Christian Weichel" ]),
  Talk.new("19.11.2009", "Erweckt den Rechenknecht / GPGPU-Computing", [ "Matthias Schaff" ]),
  Talk.new("21.11.2009", "Unfug geekend", []),
  Talk.new("26.11.2009", "Arduino", [ "luke", "blacki"]),
  Talk.new("03.12.2009", "Linux on PS3 / Cell Hacking", [ "Martin Lowinski" ]),
  Talk.new("10.12.2009", "GnuPG & Keysigning Party I", [ "Markus Held", "Michael Faath"]),
  Talk.new("17.12.2009", "Informatik Rockstars & Keysigning Party II", [ "Christian Weichel", "Michael Faath"]),
  Talk.new("14.01.2010", "UnFUCK Organisationstreffen", []),
  Talk.new("15.01.2010", "UnFUCK", []),
  Talk.new("21.01.2010", "Pimp my x86", []),

  Talk.new("18.03.2010", "Organisationstreffen", []),
  Talk.new("25.03.2010", "TexTalk", [ "Max Moesinger" ]),
  Talk.new("08.04.2010", "Firefox Plugin Development", [ "Serbest Hamade"]),
  Talk.new("15.04.2010", "Model Checking & Self verifying compiler", ["Christian Weichel"]),
  Talk.new("22.04.2010", "VI Magic", [ "Dominik Bacher" ]),
  Talk.new("29.04.2010", "The Map Reduce SOM algorithm", [ "Christian Weichel" ]),
  Talk.new("06.05.2010", "Linux Basics", []),
  Talk.new("20.05.2010", "Kernel Hacking", [ "Dominik Bacher" ]),
  Talk.new("27.05.2010", "Quadrokopter", []),
  Talk.new("17.06.2010", "The NoSQL revolution", [ "Christoph Foehrdes"]),
  Talk.new("01.07.2010", "Pimp my x86", []),

  Talk.new("07.10.2010", "Organisationstreffen", []),
  Talk.new("14.10.2010", "Einfuehrung in LaTeX", ["Holger Gantikow"]),
  Talk.new("21.10.2010", "Linux- Auto- Install", []),
  Talk.new("28.10.2010", "Password Probability Matrix", []),
  Talk.new("04.11.2010", "Python", [ "Serbest Hamade" ]),
  Talk.new("11.11.2010", "Frickeln (screen, vim, make, gcc, ...)", [ "spyk", "max"]),
  Talk.new("18.11.2010", "JSP, JSF / Struts", ["bluec0re"]),
  Talk.new("25.11.2010", "Audio- APIs (Windows, GNU Linux)", ["schalla", "winnie"]),
  Talk.new("02.12.2010", "IP- Tables", ["spyk", "max"]),
  Talk.new("09.12.2010", "Ruby", ["winnie"]),
  Talk.new("16.12.2010", "Virtual Desktop Environments", ["azidburn", "luke"]),
  Talk.new("13.01.2011", "Scheduling im Linux Kernel", ["schickse"]),
  Talk.new("20.01.2011", "Mozilla- Addons", [ "Serbest Hamade"]),
  Talk.new("27.01.2011", "Pimp my x86", []),

  Talk.new("17.03.2011", "Organisationstreffen", []),
  Talk.new("24.03.2011", "DIY Virtual Machine", [ "blacki" ]),
  Talk.new("31.03.2011", "Einfuehrung in LaTeX", [ "Andrej Eisfeld", "Sergej Proskurin"]),
  Talk.new("07.04.2011", "Reinforcement Learning - An Introduction", [ "blacki" ]),
  Talk.new("14.04.2011", "UnFUCK Orga", []),
  Talk.new("15.04.2011", "UnFUCK 2011", []),
  Talk.new("28.04.2011", "NginX Webserver", [ "Christian Fischer" ]),
  Talk.new("05.05.2011", "IP-Cop", [ "Johannes Maeulen" ]),
  Talk.new("12.05.2011", "Wayland", [ "Serbest Hamade" ]),
  Talk.new("19.05.2011", "Modelling with System C", [ "Andrej Eisfeld" ]),
  Talk.new("26.05.2011", "Reverse Engineering unter GNU/Linux", [ "bluec0re", "winnie"]),
  Talk.new("09.06.2011", "Intrusion Detection Systems", [ "blueC0re", "rancor", "winnie"]),
  Talk.new("30.06.2011", "Pimp my x86", []),

  Talk.new("06.10.2011", "Organisationstreffen", []),
  Talk.new("13.10.2011", "Konfigurationsmanagement mit CFEngine", [ "Christian Sturm" ]),
  Talk.new("20.10.2011", "Tex-Talk", [ "Jonas Weber", "Denis Moskal" ]),
  Talk.new("27.10.2011", "Verteiltes Versionieren", [ "Jonas Weber" ]),
  Talk.new("03.11.2011", "Anomalieerkennung", [ "Alex Passfall" ]),
  Talk.new("10.11.2011", "Perl", [ "Denis Moskal" ]),
  Talk.new("17.11.2011", "Nessus / nmap / netcat...", []),
  Talk.new("24.11.2011", "IPv6", []),
  Talk.new("01.12.2011", "USB/libusb", [ "Daniel Kaefer" ]),
  Talk.new("08.12.2011", "DualUse-Tools", [ "Daniel Goetz" ]),
  Talk.new("15.12.2011", "Mozilla Jetpack", [ "Serbest Hamade" ]),
  Talk.new("12.01.2012", "Unity3D", [ "Christian Sturm" ]),
  Talk.new("19.01.2012", "Selenium Java & generated source", [ "Daniel Deusing" ]),
  Talk.new("26.01.2012", "Pimp my x86", []),

  Talk.new("15.03.2012", "Orgatreffen", []),
  Talk.new("22.03.2012", "Linux-Crashkurs", [ "Christian Sturm" ]),
  Talk.new("29.03.2012", "TeX-Talk", [ "Denis Moskal", "Jonas Weber" ]),
  Talk.new("12.04.2012", "make / vi", [ "Jonas Weber" ]),
  Talk.new("19.04.2012", "CMake", [ "Christian Sturm" ]),
  Talk.new("03.05.2012", "tba", []),
  Talk.new("10.05.2012", "Pentesting (mit) Smartphones", [ "Sergej Schmidt" ]),
  Talk.new("24.05.2012", "Sicherheit in IP-Netzen", []),
  Talk.new("14.06.2012", "Python", [ "Timo Schmid" ]),
  Talk.new("21.06.2012", "Continuous Integration mit Jenkins", [ "Serbest Hamade" ]),
  Talk.new("28.06.2012", "pimp my x86", []),

  Talk.new("19.10.2012", "UnFUCK 2012", []),
  Talk.new("25.10.2012", "Orgatreffen", []),
  Talk.new("08.11.2012", "LaTeX - Talk", [ "Tobias Ellsaesser", "Christian Fischer", "Sergej Schmidt" ]),
  Talk.new("15.11.2012", "Linux im Studium", [ "Serbest Hamade", "Christian Sturm" ]),
  Talk.new("22.11.2012", "JADE Agenten-Plattform", [ "Christian Fischer" ]),
  Talk.new("29.11.2012", "Websockets", [ "Sergej Schmidt" ]),
  Talk.new("06.12.2012", "IPTV - Streaming im Netzwerk", []),
  Talk.new("13.12.2012", "Virtuelle Maschinen - mit Workshop", [ "Serbest Hamade" ]),
  Talk.new("20.12.2012", "VxWorks", [ "Christian Sturm" ]),
  Talk.new("10.01.2013", "KVM Performance Optimierungen auf Hypervisor/Linux Ebene", [ "Christian Fischer" ]),
  Talk.new("17.01.2013", "Vom C++ - Quellcode zum Deployment", []),
  Talk.new("24.01.2013", "Pimp my x86", []),

  Talk.new("26.03.2013", "Orga-Treffen", []),
  Talk.new("04.04.2013", "LaTeX-Talk Teil 1", [ "Fabian Berner" ]),
  Talk.new("11.04.2013", "LaTeX-Talk Teil 2", [ "Fabian Berner" ]),
  Talk.new("18.04.2013", "Linux fuer Anfaenger", [ "Florian Kreidler" ]),
  Talk.new("02.05.2013", "Virtualisirung", [ "Florian Kreidler" ]),
  Talk.new("16.05.2013", "Verkehrte Welt - Linux im High Performance Computing", [ "Holger Gantikow" ]),
  Talk.new("06.06.2013", "VIM", [ "Matthias Beyer" ]),
  Talk.new("13.06.2013", "Forensik", [ "Florian Kemmer" ]),
  Talk.new("20.06.2013", "GNU Plot", [ "Julian Ganz" ]),
  Talk.new("27.06.2013", "UnFUG Stammtisch", []),
  Talk.new("04.07.2013", "Pimp my x86", []),

  Talk.new("10.10.2013", "Orga-Treffen", []),
  Talk.new("17.10.2013", "GNU/Linux fuer Anfaenger", [ "Florian Kreidler" ]),
  Talk.new("24.10.2013", "LaTeX-Talk", [ "Serbest Hamade" ]),
  Talk.new("07.11.2013", "Auto Tools", [ "Julian Ganz" ]),
  Talk.new("14.11.2013", "Virtualisierung im Cloud-Zeitalter", [ "Holger Gantikow" ]),
  Talk.new("21.11.2013", "C-Make", [ "Julian Ganz" ]),
  Talk.new("28.11.2013", "MEAN-Stack", [ "Marcel Mueller" ]),
  Talk.new("05.12.2013", "Git-Workshop Teil 1", [ "Matthias Beyer" ]),
  Talk.new("12.12.2013", "Git-Workshop Teil 2", [ "Matthias Beyer" ]),
  Talk.new("19.12.2013", "VIM-Talk", [ "Manuel Messner" ]),
  Talk.new("09.01.2014", "Static Site Compiler", [ "Matthias Beyer" ]),
  Talk.new("16.01.2014", "Doxygen", [ "Matthias Beyer" ]),
  Talk.new("23.01.2014", "Pimp my x86", []),

  Talk.new("20.03.2014", "Orga-Treffen", []),
  Talk.new("27.03.2014", "VIM-Talk", []),
  Talk.new("03.04.2014", "LaTeX-Talk", []),
  Talk.new("10.04.2014", "Lua", []),
  Talk.new("24.04.2014", "Ruby", []),
  Talk.new("08.04.2014", "Haskell", []),
  Talk.new("15.05.2014", "Ueberraschung", []),
  Talk.new("22.05.2014", "Perl", []),
  Talk.new("05.06.2014", "Kuenstliche Intelligenz", []),
  Talk.new("12.06.2014", "Low Level Linux (LoLL)", []),
  Talk.new("26.06.2014", "Wayland", []),
  Talk.new("03.07.2014", "Pimp my x86", []),

  Talk.new("09.10.2014", "Linux-Einfuehrung (Konzepte, FS-Tree, Distros, Utils, Buzzword-Erklaerung)", [ "Marcel Mueller" ]),
  Talk.new("16.10.2014", "Git-Einfuehrung",                  [ "Matthias Beyer" ]),
  Talk.new("23.10.2014", "Fish",                            [ "Manuel Messner" ]),
  Talk.new("30.10.2014", "Programmiersprache: Rust",        [ "Marcel Mueller" ]),
  Talk.new("06.11.2014", "Programmiersprache: Racket",      [ "Matthias Beyer" ]),
  Talk.new("13.11.2014", "Googles Programmiersprache 'Go'", [ "David Neyer" ]),
  Talk.new("20.11.2014", "Reverse-engineering Workshop, Part 1", [ "Manuel Messner" ]),
  Talk.new("27.11.2014", "Reverse-engineering Workshop, Part 2", [ "Manuel Messner" ]),
  Talk.new("04.12.2014", "Thema noch unbekannt", [ "Serbest Hamade" ]),
  Talk.new("11.12.2014", "C++ - arcane and rusty (Part 1)", [ "Julian Ganz" ]),
  Talk.new("18.12.2014", "C++ - arcane and rusty (Part 2)", [ "Julian Ganz" ]),
  Talk.new("08.01.2014", "CCC-Resumee && (alle) Bullshit-Bingo", [ "Matthias Beyer" ]),
  Talk.new("15.01.2014", "Waysome Projektvorstellung", [ "Matthias Beyer", "Julian Ganz"]),
  Talk.new("22.01.2014", "Pimp my x86", []),
]

require 'date'

TALKS.each do |talk|
  puts talk
  date = talk.date
  if date.is_a? Fixnum
    date = "#{date}-01-01 00:00:00"
  end
  date = (talk.date ? Date.parse(date).strftime("%Y-%m-%d") : "0000-00-00")
  title = talk.title.gsub(" ", "-")
  ca = Time.now.strftime("%Y-%m-%d %H:%M:%S")
  author = "Matthias Beyer"
  slides = "false"

  filename = "./content/talks/#{date}-#{title.gsub("/", "_").gsub("(", "_").gsub(")", "_")}.md"
  File.open(filename, "w") do |f|
    f.puts "---"
    f.puts "title: #{talk.title.gsub(":", " ")}"
    f.puts "kind: :talk"
    f.puts "date: #{ca}"
    f.puts "created_at: #{Date.today}"
    f.puts "speakers:"
    if talk.speaker.empty?
      f.puts "    - unknown"
    else
      talk.speaker.each do |s|
        f.puts "    - #{s}"
      end
    end
    f.puts "author: #{author}"
    f.puts "slides: #{slides}"
    f.puts "tags:"
    f.puts "---"
    f.puts ""
    f.puts "No description."
  end

end

