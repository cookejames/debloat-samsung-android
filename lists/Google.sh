#!/bin/bash

declare -a google_bloat=(

	"com.android.hotwordenrollment.okgoogle" 
	# "OK Google" detection service.

	"com.android.partnerbrowsercustomizations.chromeHomepage" 
	# Horrible stuff for Google Chrome. This package bypass your DNS settings (for letting pass Google ads)

	"com.android.chrome" 
	# Google Chrome app (https://play.google.com/store/apps/details?id=com.android.chrome)

	"com.chrome.beta" 
	# Google Chrome Beta (https://play.google.com/store/apps/details?id=com.chrome.beta)

	"com.chrome.canary" 
	# Google Chrome Canary (Nightly build) (https://play.google.com/store/apps/details?id=com.chrome.canary)

	"com.chrome.dev" 
	# Google Chrome (developer)	(https://play.google.com/store/apps/details?id=com.chrome.dev)

	"com.google.android.apps.access.wifi.consumer" 
	# Google Wifi app (https://play.google.com/store/apps/details?id=com.google.android.apps.access.wifi.consumer)

	"com.google.android.apps.adm" 
	# Google Find my device app (https://play.google.com/store/apps/details?id=com.google.android.apps.adm)

	"com.google.android.apps.ads.publisher" 
	# Google Adsense app (https://play.google.com/store/apps/details?id=com.google.android.apps.ads.publisher) 

	"com.google.android.apps.adwords" 
	# Google Ads app (https://play.google.com/store/apps/details?id=com.google.android.apps.adwords)

	"com.google.android.apps.authenticator2" 
	# Google authentificator app (https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2)

	"com.google.android.apps.blogger" 
	# Google blogger app (https://play.google.com/store/apps/details?id=com.google.android.apps.blogger)

	"com.google.android.apps.books" 
	# Google Play Books (https://play.google.com/store/apps/details?id=com.google.android.apps.books)

	"com.google.android.apps.chromecast.app" 
	# Google Home (https://play.google.com/store/apps/details?id=com.google.android.apps.chromecast.app_US)

	"com.google.android.apps.cloudprint" 
	# Cloud print (https://play.google.com/store/apps/details?id=com.google.android.apps.cloudprint)

	"com.google.android.apps.cultural" 
	# Google Arts & Culture (https://play.google.com/store/apps/details?id=com.google.android.apps.cultural_US)

	"com.google.android.apps.currents" 
	# Google Currents (discontinued)

	"com.google.android.apps.docs"
	# Google Drive (https://play.google.com/store/apps/details?id=com.google.android.apps.docs_US)

	"com.google.android.apps.docs.editors.docs" 
	# Google Docs (https://play.google.com/store/apps/details?id=com.google.android.apps.docs.editors.docs)

	"com.google.android.apps.docs.editors.sheets" 
	# Google sheets

	"com.google.android.apps.docs.editors.slides" 
	# Google slides (for presentation)

	"com.google.android.apps.dynamite" 
	# Hangout chat (https://play.google.com/store/apps/details?id=com.google.android.apps.dynamite)

	"com.google.android.apps.enterprise.cpanel" 
	# Google Admin (https://play.google.com/store/apps/details?id=com.google.android.apps.enterprise.cpanel)

	"com.google.android.apps.enterprise.dmagent" 
	# Google apps device policy (https://play.google.com/store/apps/details?id=com.google.android.apps.enterprise.dmagent)

	"com.google.android.apps.fireball" 
	# Google Allo (discontinued)

	"com.google.android.apps.fitness" 
	# Google Fit (https://play.google.com/store/apps/details?id=com.google.android.apps.fitness)

	"com.google.android.apps.freighter" 
	# Google Datally (discontinued)

	"com.google.android.apps.giant" 
	# Google Analytics (https://play.google.com/store/apps/details?id=com.google.android.apps.giant)

	"com.google.android.apps.googleassistant" 
	# Google Assistant (https://play.google.com/store/apps/details?id=com.google.android.apps.googleassistant_US)

	"com.google.android.apps.handwriting.ime" 
	# Google Handwriting Input (https://play.google.com/store/apps/details?id=com.google.android.apps.handwriting.ime)

	"com.google.android.apps.hangoutsdialer" 
	# Google Hangout Dialer (https://play.google.com/store/apps/details?id=com.google.android.apps.hangoutsdialer)

	"com.google.android.apps.inbox" 
	# Inbox by Gmail (Discontinued)
	"com.google.android.apps.kids.familylink" 
	# Google Family Link (https://play.google.com/store/apps/details?id=com.google.android.apps.kids.familylink)

	"com.google.android.apps.kids.familylinkhelper" 
	# Google Family Link for children & teens (https://play.google.com/store/apps/details?id=com.google.android.apps.kids.familylinkhelper)

	"com.google.android.apps.m4b" 
	# Google My Maps (https://play.google.com/store/apps/details?id=com.google.android.apps.m4b)
	# It is NOT Google Maps

	"com.google.android.apps.magazines" 
	# Google News (https://play.google.com/store/apps/details?id=com.google.android.apps.magazines)

	"com.google.android.apps.mapslite" 
	# Google Maps Go (lite web app of Maps) (https://play.google.com/store/apps/details?id=com.google.android.apps.mapslite)

	"com.google.android.apps.meetings" 
	# Hangout Meet (https://play.google.com/store/apps/details?id=com.google.android.apps.meetings)

	"com.google.android.apps.messaging" 
	# Google Messaging (SMS) (https://play.google.com/store/apps/details?id=com.google.android.apps.messaging)

	"com.google.android.apps.navlite" 
	# Google Maps GPS (https://play.google.com/store/apps/details?id=com.google.android.apps.navlite)
	"com.google.android.apps.nbu.files" 
	# File Management (https://play.google.com/store/apps/details?id=com.google.android.apps.nbu.files)

	"com.google.android.apps.paidtasks" 
	# Google Opinion Rewards (https://play.google.com/store/apps/details?id=com.google.android.apps.paidtasks)

	"com.google.android.apps.pdfviewer" 
	# Google PDF Viewer (https://play.google.com/store/apps/details?id=com.google.android.apps.pdfviewer)

	"com.google.android.apps.photos" 
	# Google Photos (https://play.google.com/store/apps/details?id=com.google.android.apps.photos_US)

	"com.google.android.apps.photos.scanner" 
	# PhotoScan app (https://play.google.com/store/apps/details?id=com.google.android.apps.photos.scanner)

	"com.google.android.apps.plus" 
	# Google+ (https://play.google.com/store/apps/details?id=com.google.android.apps.plus_US)

	"com.google.android.apps.podcasts"
	# Google Podcasts (https://play.google.com/store/apps/details?id=com.google.android.apps.podcasts)

	"com.google.android.apps.restore" 
	# Restore apps during first boot.
	"com.google.android.apps.santatracker" 
	# Google Santa Tracker WTF ??? (https://play.google.com/store/apps/details?id=com.google.android.apps.santatracker)

	"com.google.android.apps.subscriptions.red" 
	# Google One (https://play.google.com/store/apps/details?id=com.google.android.apps.subscriptions.red_US)

	"com.google.android.apps.tachyon" 
	# Google Duo (Video Calls) (https://play.google.com/store/apps/details?id=com.google.android.apps.tachyon)

	"com.google.android.apps.tasks" 
	# Google Task (TODO list) (https://play.google.com/store/apps/details?id=com.google.android.apps.tasks)

	"com.google.android.apps.translate" 
	# Google Translate (https://play.google.com/store/apps/details?id=com.google.android.apps.translate)

	"com.google.android.apps.travel.onthego" 
	# Google Trip (discontinued)

	"com.google.android.apps.vega" 
	# Google My Business (https://play.google.com/store/apps/details?id=com.google.android.apps.vega)

	"com.google.android.apps.walletnfcrel" 
	# Google Pay (https://play.google.com/store/apps/details?id=com.google.android.apps.walletnfcrel)

	"com.google.android.apps.wallpaper" 
	# Google Wallpapers (https://play.google.com/store/apps/details?id=com.google.android.apps.wallpaper)

	"com.google.android.apps.wellbeing" 
	# Digital Wellbeing (habits tracking tool) (https://play.google.com/store/apps/details?id=com.google.android.apps.wellbeing)

	"com.google.android.apps.youtube.creator" 
	# Youtube Studio (https://play.google.com/store/apps/details?id=com.google.android.apps.youtube.creator)

	"com.google.android.apps.youtube.gaming" 
	# Youtube Gaming -(discontinued in March 2019, features integrated in main youtube app)

	"com.google.android.apps.youtube.kids" 
	# Youtube Kid (https://play.google.com/store/apps/details?id=com.google.android.apps.youtube.kids)

	"com.google.android.apps.youtube.music" 
	# Youtube Music (https://play.google.com/store/apps/details?id=com.google.android.apps.youtube.music)

	"com.google.android.apps.youtube.vr" 
	# Youtube VR (https://play.google.com/store/apps/details?id=com.google.android.apps.youtube.vr)

	"com.google.android.backuptransport" 
	# Allows Android apps to back up their data on Google servers.

	"com.google.android.calculator" 
	# Google Calculator (https://play.google.com/store/apps/details?id=com.google.android.calculator)

	"com.google.android.calendar" 
	# Google Calendar (https://play.google.com/store/apps/details?id=com.google.android.calendar)

	"com.google.android.configupdater" # ??? Discontinued

	"com.google.android.contacts" 
	# Google Contacts (https://play.google.com/store/apps/details?id=com.google.android.contacts)

	#"com.google.android.deskclock" 
	# Google clock app (https://play.google.com/store/apps/details?id=com.google.android.deskclock)

	"com.google.android.feedback" 
	# When an app crashes, this is the app that briefly asks you if you want to feedback the crash on the market, Google Play Store.

	"com.google.android.googlequicksearchbox" 
	# Google Search box (https://play.google.com/store/apps/details?id=com.google.android.googlequicksearchbox)

	"com.google.android.keep" 
	# Google Keep (https://play.google.com/store/apps/details?id=com.google.android.keep)

	"com.google.android.markup" 
	# Google Markup app made for modifying pictures, ships by default on every Pie+ device.

	"com.google.android.marvin.talkback" 
	# Android Accessibility Suite (https://play.google.com/store/apps/details?id=com.google.android.marvin.talkback)
	# Helps blind and vision-impaired users.

	"com.google.android.music" 
	# Google Play Music (https://play.google.com/store/apps/details?id=com.google.android.music)

	"com.google.android.onetimeinitializer" 
	# Provides first time setup, safe to remove.

	"com.google.android.partnersetup" 
	# Software that helps other apps to work with Google products.

	"com.google.android.play.games" 
	# Google Play Games (https://play.google.com/store/apps/details?id=com.google.android.play.games)

	"com.google.android.printservice.recommendation"
	# Print recommendation service. 
	# Not clear, seems to help you to find printers but it's not mandatory. 
	# Safe to remove

	"com.google.android.projection.gearhead" 
	# Android auto (https://play.google.com/store/apps/details?id=com.google.android.projection.gearhead)

	"com.google.android.setupwizard" 
	# Removable after the first start of the phone, it's the basic configuration wizard that drives you through first boot.

	"com.google.android.soundpicker" 
	# Google Sounds. Removable if you already have another media select service.

	"com.google.android.street" 
	# Google Street View (https://play.google.com/store/apps/details?id=com.google.android.street)

	"com.google.android.syncadapters.calendar" 
	# Synchronisation for Google Calendar.

	"com.google.android.syncadapters.contacts" 
	# Synchronisation for Google Contacts.

	"com.google.android.talk" 
	# Google Hangouts (https://play.google.com/store/apps/details?id=com.google.android.talk)

	"com.google.android.tts" 
	# Text-to-speech (https://play.google.com/store/apps/details?id=com.google.android.tts)
	# Powers apps to read text on your scream aloud, in many languages

	"com.google.android.tv.remote" 
	# Android TV remote control (https://play.google.com/store/apps/details?id=com.google.android.tv.remote)

	"com.google.android.videos" 
	# Google Play Movies & TV (https://play.google.com/store/apps/details?id=com.google.android.videos)

	"com.google.android.vr.home" 
	# Daydream (VR stuff) (https://play.google.com/store/apps/details?id=com.google.android.vr.home)

	"com.google.android.vr.inputmethod" 
	# Daydream virtual keyboard (VR stuff) (https://play.google.com/store/apps/details?id=com.google.android.vr.inputmethod)

	"com.google.android.wearable.app" 
	# Wear OS Smartwatch (https://play.google.com/store/apps/details?id=com.google.android.wearable.app)

	"com.google.android.youtube" 
	# YouTube app (https://play.google.com/store/apps/details?id=com.google.android.youtube)
	"com.google.ar.core" 
	# Google Play Services for AR (Augmented Reality) (https://play.google.com/store/apps/details?id=com.google.ar.core)

	"com.google.ar.lens" 
	# Google Lens (for AR too) (https://play.google.com/store/apps/details?id=com.google.ar.lens)

	"com.google.chromeremotedesktop" 
	# Chrome Remote Desktop (https://play.google.com/store/apps/details?id=com.google.chromeremotedesktop)

	"com.google.earth" 
	# Google Earth (https://play.google.com/store/apps/details?id=com.google.earth)

	"com.google.marvin.talkback" 
	# Android Accessibility Suite (https://play.google.com/store/apps/details?id=com.google.android.marvin.talkback)

	"com.google.samples.apps.cardboarddemo" 
	# Google Cardboard (VR stuff) (https://play.google.com/store/apps/details?id=com.google.samples.apps.cardboarddemo)

	"com.google.tango.measure" 
	# Google Measure (https://play.google.com/store/apps/details?id=com.google.tango.measure)

	"com.google.vr.cyclops" 
	# Google Cardboard Camera (VR stuff) (https://play.google.com/store/apps/details?id=com.google.vr.cyclops)

	"com.google.vr.expeditions" 
	# Google Expedition (VR stuff) (https://play.google.com/store/apps/details?id=com.google.vr.expeditions)

	"com.google.vr.vrcore" 
	# Google VR services (https://play.google.com/store/apps/details?id=com.google.vr.vrcore)

	"com.google.zxing.client.android" 
	# Google Barcode Scanner (Discontinued) (https://play.google.com/store/apps/details?id=com.google.zxing.client.android)


	####################################  ADVANCED DEBLOAT  ####################################

	"com.google.android.ext.services"
	# Android Services Library only contains, for now, an "Android Notification Ranking Service." 
	# It sorts notifications by "importance" based on things like freshness, app type (IM apps come first), and by contact. 
	# For now it is safe to remove if you really want.
	# The library android.ext.services is open-source but this apk is not. Google probably uses it to update its API without having to rely to the OEM
	# https://arstechnica.com/gadgets/2016/11/android-extensions-could-be-googles-plan-to-make-android-updates-suck-less/
	
	"com.google.android.ext.shared"
	## Google shared library (used to share common code between apps)
	# For now the library (android.ext.shared is empty). So this apk is useless. 
	# This apk has the same role than the one above.

	#"com.google.android.gms" 
	# Google Play Services
	# gms = Google Mobile Services
	# It is a layer that sits on top of the OS and provide a bunch of Google APIs, giving developers access to various Google Services.
	# If you remove it all the apps relying on Google Play Services whill either : 
	# - detect the lack of play services and refuse to run
	# - detect the lack of play services but allow you to run (not properly) by dismissing a annoying popup
	# With some phones, removing Google Play Services bootloop the device so be careful.
	# NOTE : Deleting this package will improve a LOT your battery life !

	#"com.google.android.gsf"
	# Google Services Framework
	# Supports the Play Services application in a variety of ways from application updates, user authentication, location services, user searches & more 
	# https://android.stackexchange.com/questions/216176/what-is-the-exact-functionality-of-google-play-services-google-services-framew
	# https://stackoverflow.com/questions/37337448/what-is-the-difference-between-google-service-frameworkgsfgoogle-mobile-servi
	# Same recommendation than com.google.android.gms except that I've never seen a bootloop because of deleting this package.

	#"com.google.android.gsf.login" 
	# Support for managing Google accounts
	# Safe to remove if you don't use a Google account.

	#"com.google.android.partnersetup"
	# Enables applications to perform functionality that requires access to your Google account information
	# Safe to remove if you don't have a Google account

	#"com.google.android.webview"
	# Android WebView is a system component for the Android operating system (OS) that allows Android apps to display content 
	# from the web directly inside an application. It's based on Chrome.
	# On open-source privacy oriented Webview is Bromite (https://www.bromite.org/system_web_view)
	# https://play.google.com/store/apps/details?id=com.google.android.webview

	#"com.google.android.launcher" 
	# Google Now Launcher (https://play.google.com/store/apps/details?id=com.google.android.launcher)
	# DO NOT REMOVE THIS IF YOU DON'T HAVE ANOTHER LAUNCHER INSTALLED.

	#"com.google.android.gm" # Gmail (https://play.google.com/store/apps/details?id=com.google.android.gm)

	#"com.google.android.ims" 
	# Carrier Services (for Google phones) (https://play.google.com/store/apps/details?id=com.google.android.ims)
	# IMS is an open industry standard for voice and multimedia communications over packet-based IP networks (Volte/VoIP/Wifi calling).

	#"com.android.vending" 
	# Google Play Store app.

	#"com.google.android.apps.maps" 
	# Google maps (https://play.google.com/store/apps/details?id=com.google.android.apps.maps)

	#"com.google.android.apps.photos" 
	# Google photos (https://play.google.com/store/apps/details?id=com.google.android.apps.photos)
	
	#####  GOOGLE KEYBOARD  #####
	# I'm not sure if you can delete Google keyboard on Google phone without having issue to unlock your phone on boot.
	# If someone can test it, that will be great ! :D

	#"com.google.android.inputmethod.latin" 
	# Google Keyboard (https://play.google.com/store/apps/details?id=com.google.android.inputmethod.latin)

	#"com.google.android.apps.inputmethod.hindi" 
	# Google Keyboard + Hinndi characters (https://play.google.com/store/apps/details?id=com.google.android.apps.inputmethod.hindi)

	#"com.google.android.inputmethod.japanese"
	# Google Keyboard + Japanese characters (https://play.google.com/store/apps/details?id=com.google.android.inputmethod.japanese)

	#"com.google.android.inputmethod.korean"
	# Google Keyboard + Korean characters (https://play.google.com/store/apps/details?id=com.google.android.inputmethod.korean)

	#"com.google.android.inputmethod.pinyin"
	# Google Keyboard + Pinyin (chinese) characters (https://play.google.com/store/apps/details?id=com.google.android.inputmethod.pinyin)
	)


#####################  DO NOT REMOVE THIS (prevent core stuff to work)  #####################

"com.google.android.packageinstaller"
# Gives ability to install, update or remove applications on the device.
# If you delete this package, your phone will probably bootloop.
