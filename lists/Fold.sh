#!/usr/bin/env bash

declare -a fold=(
	"com.enhance.gameservice"
	# Legacy game Optimizing Service (was replaced by com.samsung.android.game.gos)
	# Is supposed to "improve" game performance.

	"com.mygalaxy"
	# My Galaxy (https://play.google.com/store/apps/details?id=com.mygalaxy)
	# Entertainment hub and life-services application
	# Lets your access videos, music and gaming and gives quick access to services such as cabs, movies, recharge and bill payment, 
	# food ordering, travel, hyper local deals and Samsung Care, among others.

	#"com.samsung.aasaservice"
	# Sometimes, eat a LOT of battery (according to some reddit users)
	# Security policy apps (kind of things which prevents installation of applications)

	"com.samsung.android.airtel.stubapp"
	# My Airtel Stub app
	# My Airtel is a customer service app designed for Airtel subscribers in Sri Lanka
	# This pasckage isn't the app itself but only a stub. 
	# It's basically a non-functional empty shell which often only redirect you to the PlayStore to download the full app

	"com.samsung.android.app.camera.sticker.facear.preload"
	"com.samsung.android.app.camera.sticker.facear3d.preload" # Default 3D live stickers
	"com.samsung.android.app.camera.sticker.stamp.preload"
	# Annoying Stickers/stamps of the Samsung camera app. C'mon it feels like Snapshat.
	# https://developer.samsung.com/galaxy/stickers
	# Safe to remove

	"com.samsung.android.app.news"
	# News Samsung app
	# Doesn't exist anymore? 

	"com.samsung.android.app.panel.naver.v"
	# Naver V Panel
	# Special samsung panel for the very useless V LIVE (formerly Naver V) app (https://play.google.com/store/apps/details?id=com.naver.vapp)
	# V LIVE is an app that features personal video broadcasts of South Korean celebrities
	# This panel also includes Naver Shopping (https://shopping.naver.com/)

	#"com.samsung.android.app.tips"
	# Tips on how to use your phone"


	"com.samsung.android.app.vrsetupwizards"
	"com.samsung.android.app.vrsetupwizardstub"
	# Samsung Gear VR (Virtual Reality) setup wizard (https://en.wikipedia.org/wiki/Samsung_Gear_VR)
	# https://360samsungvr.com/portal/content/about_samsung_vr
	# Stub = https://stackoverflow.com/questions/10648280/what-is-stub-and-aidl-for-in-java
	# Setup wizard : The first time you turn your device on, a Welcome screen is displayed. It guides you through the basics of setting up your device.
	# It's the setup for Samsung VR services.

	"com.samsung.android.app.watchmanager"
	# Samsung Galaxy Wearable (Samsung Gear) (https://play.google.com/store/apps/details?id=com.samsung.android.app.watchmanager)

	"com.samsung.android.app.watchmanagerstub"
	# Stub for the watch manager. See above
	# Stub = https://stackoverflow.com/questions/10648280/what-is-stub-and-aidl-for-in-java

	#"com.samsung.android.bixby.agent" # Bixby voice
	# Removing this will disable the bixby hardware key without breaking Bixby itself.

	#"com.samsung.android.bixby.agent.dummy" # Bixby Voice Stub
	#"com.samsung.android.bixby.es.globalaction"
	#"com.samsung.android.bixby.plmsync"
	#"com.samsung.android.bixby.service" # Bixby Service
	#"com.samsung.android.bixby.voiceinput"
	#"com.samsung.android.bixby.wakeup" # Bixby voice wake-up
	#"com.samsung.android.bixbyvision.framework" # BixbyVision Framework

	"com.samsung.android.calendar"
	# Samsung Calendar App

	"com.samsung.android.email.provider"
	# Samsung email app (https://play.google.com/store/apps/details?id=com.samsung.android.email.provider)

	"com.samsung.android.game.gamehome"
	# Samsung Game Launcher 
	# https://www.samsung.com/global/galaxy/apps/game-launcher/
	# All in one hub for mobiles games

	"com.samsung.android.game.gametools"
	# Samsung Game Tools (https://www.samsung.com/au/support/mobile-devices/how-to-use-game-tools/)
	# Let you record and share screenshots of your game-play. 

	"com.samsung.android.game.gos"
	# Samsung Game Optimizing Service 
	# Is supposed to "improve" game performance.


	"com.samsung.android.gametuner.thin"
	# Samsung Game Tuner (https://play.google.com/store/apps/details?id=com.samsung.android.gametuner.thin)
	# Game Tuner is advanced setting app. It enables you to change the resolution and frames per second settings
	# in mobile games that require tuning for different Android devices, and thereby control heat generation and battery drain.

	"com.samsung.android.hmt.vrshell"
	# Gear VR Shell 
	# Gear VR : https://360samsungvr.com/portal/content/about_samsung_vr

	"com.samsung.android.hmt.vrsvc"
	# Gear VR Service
	# See above.

	"com.samsung.android.intelligenceservice2"
	# It seems that this package is a kind of spyware. Very difficult to find information about this.
	# Some people say it's linked to Carrier IQ (which is a carrier rootkit for the NSA).
	# https://en.wikipedia.org/wiki/Carrier_IQ
	# https://forum.xda-developers.com/showpost.php?s=c85df628dfc39c3a971e6f9cfa98cbb8&p=54071328&postcount=6
	# This package also have very stranges permissions : READ_PLACE / WRITE_PLACE. I couldn't find any explaination on the web. 
	# So either it's a useless samsung package either it's a spyware. I delete it and I didn't notice anything bad.

	"com.samsung.android.kidsinstaller"
	# Samsung Kids Home (https://www.samsung.com/global/galaxy/apps/samsung-kids-home/)
	# Lets you shape a "safe environment" for your child.
	# NOTE : You shouldn't give your phone to a child. That bad ! 
	# https://ifstudies.org/blog/a-smartphone-will-change-your-child-in-ways-you-might-not-expect-or-want

	"com.samsung.android.providers.context"
	# Spyware 
	# https://www.eteknix.com/samsungs-context-service-may-take-data-collection-surveillance-worrying-levels/
	# https://www.theinquirer.net/inquirer/news/2328363/samsung-context-service-will-collect-user-data-to-share-with-developers

	"com.samsung.android.samsungpass"
	# Samsung Pass app
	# https://www.samsung.com/global/galaxy/apps/samsung-pass/

	"com.samsung.android.samsungpassautofill"
	# Auto Fill for Samsung Pass
	# Once your account information is registered, you can use iris, fingerprint, or face recognition to sign in.
	# https://www.samsung.com/us/support/answer/ANS00082282/

	"com.samsung.android.spayfw" 
	# Samsung Pay Framework needed for Samsung Pay
	# See below

	"com.samsung.android.spay"
	# Samsung Pay (https://play.google.com/store/apps/details?id=com.samsung.android.spay)
	# Samsung Pay is a mobile payment and digital wallet service by Samsung Electronics that lets users make payments using compatible phones 
	# and other Samsung-produced devices
	# https://en.wikipedia.org/wiki/Samsung_Pay
	# NOTE : Samsung Pay is KNOX dependant and will never work again if you root your phone.
	# FYI : Your data are sold (https://www.sammobile.com/news/samsung-pay-new-privacy-policy-your-data-sold/)

	"com.samsung.android.spaymini"
	# Samsung Pay Mini
	# Same service as Samsung Pay but for online payments only and is available on all compatible android devices (not only Samsung devices)
	# https://www.samsung.com/in/samsung-pay/mini/

	"com.samsung.android.wellbeing"
	"com.samsung.android.forest"
	# Digital Wellbeing (https://play.google.com/store/apps/details?id=com.google.android.apps.wellbeing)
	# is a feature which shows apps dashboard through which one can see how much time any application opened and 
	# also swiping to different screens allows you to see breakdowns by day, by hour and by app.

	"com.samsung.android.widgetapp.yahooedge.finance"
	# Special edge panel widget for Yahoo Finance

	"com.samsung.android.widgetapp.yahooedge.sport"
	# Special edge panel widget for Yahoo Sport

	"com.samsung.ecomm"
	# Shop Samsung (https://play.google.com/store/apps/details?id=com.samsung.ecomm)
	# App where you can buy all (and only) Samsung products.
	# https://www.samsung.com/us/explore/shop-samsung-app/

	"com.samsung.oh"
	# Samsung Members (https://play.google.com/store/apps/details?id=com.samsung.oh)
	# Samsung community. It's a kind of social media app for Samsung users.
	# https://www.samsung.com/global/galaxy/apps/samsung-members/
	# OOOPS ! https://bgr.com/2019/10/31/samsung-members-dong-pic-oops/
	# The other version is "com.samsung.android.voc".

	#"com.samsung.systemui.bixby"
	#s"com.samsung.systemui.bixby2"
	# System UI for Bixby/Bixby2

	"com.sec.android.app.gamehub"
	# Samsung Game Hub
	# Was replaced by "com.samsung.android.game.gamehome"
	# https://www.techradar.com/news/phone-and-communications/mobile-phones/the-samsung-game-hub-explained-1143450

	"com.sec.android.app.samsungapps"
	# Samsung Galaxy Store
	# Samsung app store.
	# https://en.wikipedia.org/wiki/Samsung_Galaxy_Store

	"com.sec.android.app.sbrowser"
	# Samsung web browser (https://play.google.com/store/apps/details?id=com.sec.android.app.sbrowser)

	"com.sec.android.app.shealth"
	# Samsung Health (https://play.google.com/store/apps/details?id=com.sec.android.app.shealth)
	# Serves to track various aspects of daily life contributing to well being such as physical activity, diet, and sleep.
	# https://en.wikipedia.org/wiki/Samsung_Health
	# S Health data are stored in a Knox container (with HIPAA compliance)

	"com.sec.android.game.gamehome"
	# Samsung Game launcher
	# Centralizes all your android games. This app can track all your games, how many hours you've spent playing each one, and which genres you play the most.
	# Recommends games based on your profile.
	# https://galaxystore.samsung.com/prepost/000004906980?appId=com.samsung.android.game.gamehome 

	"com.sec.android.mimage.avatarstickers"
	# Samsung My Emoji Stickers
	# Let you turn yourself into an emoji. Woah ! What an incredible feature...
	# https://www.samsung.com/us/support/answer/ANS00078920/

	"com.sec.android.preloadinstaller"
	# Very shady apk. According to if you're chinese or not, Samsung mount an hidden partition during the first boot and install some apps.
	# https://nitter.net/fs0c131y/status/1046689524691218432#m
	# Archive : https://web.archive.org/web/20200107110205/https://nitter.net/fs0c131y/status/1046689524691218432

	"com.sec.android.service.health"
	# Samsung Health Service
	# Needed for Samsung Health (com.sec.android.app.shealth)

	"com.sec.everglades"
	# Samsung Hub (discontinued)
	# It was a cloud-based music service launched by Samsung. It allowed users to listen to music from a variety of Samsung devices
	# https://en.wikipedia.org/wiki/Samsung_Music_Hub

	"com.sec.everglades.update"
	# SamsungHub Updater (discontinued - See above)

    "com.sec.kidsplat.installer"
	# Kids Mode (replaced by Kids Home : com.samsung.android.kidsinstaller)
	# Samsung Kids Home (https://www.samsung.com/global/galaxy/apps/kids-mode/)
	# Lets you shape a safe environment for your child to happily explore and connect with the world.
	# NOTE : You shouldn't give your phone to a child. That bad ! 
	# https://ifstudies.org/blog/a-smartphone-will-change-your-child-in-ways-you-might-not-expect-or-want


)