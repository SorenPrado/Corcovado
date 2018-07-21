# Attempt to load a config.make file.
# If none is found, project defaults in config.project.make will be used.
ifneq ($(wildcard config.make),)
	include config.make
endif

# make sure the the OF_ROOT location is defined
ifndef OF_ROOT
    OF_ROOT=../../..
endif



# call the project makefile!
include $(OF_ROOT)/libs/openFrameworksCompiled/project/makefileCommon/compile.project.mk



APPDIR = $(shell pwd)
DSTDIR = "/home/pi/bin/"
y  = $(subst _, , $(APPNAME))
APPBASENAME = $(word 1, $(y))


install: 
	@echo $(APPNAME) 
	@cp $(APPDIR)/bin/$(APPNAME) $(DSTDIR)
	@ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME) 
	@rsync -rav $(DSTDIR) pi2:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi3:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi4:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi5:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi6:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi7:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi8:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi9:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi10:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi11:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi12:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi13:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi14:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi15:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi16:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi17:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi19:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi20:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi21:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi22:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi23:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi24:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi25:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi26:$(DSTDIR)
	@rsync -rav $(DSTDIR) pi27:$(DSTDIR)
	@rsync -rav "/home/pi/playback_settings.xml" pi2:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi3:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi4:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi5:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi6:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi7:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi8:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi9:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi10:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi11:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi12:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi13:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi14:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi15:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi16:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi17:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi18:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi19:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi20:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi21:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi22:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi23:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi24:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi25:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi26:"/home/pi/playback_settings.xml"  
	@rsync -rav "/home/pi/playback_settings.xml" pi27:"/home/pi/playback_settings.xml"  
	@ssh pi2 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi3 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi4 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi5 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi6 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi7 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi8 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi9 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi10 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi11 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi12 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi13 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi14 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi15 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi16 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi17 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi18 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi19 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi20 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi21 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi22 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi23 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi24 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi25 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi26 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'
	@ssh pi27 'ln -sf $(DSTDIR)/$(APPNAME) $(DSTDIR)/$(APPBASENAME)'	

.PHONY: install 
	#@ssh pi2 'killall $(APPNAME)'
	#@ssh pi3 'killall $(APPNAME)'
	#@ssh pi4  'killall $(APPNAME)'
	#@ssh pi5  'killall $(APPNAME)'
	#@ssh pi6  'killall $(APPNAME)'
	#@ssh pi7  'killall $(APPNAME)'
	#@ssh pi8  'killall $(APPNAME)'
	#@ssh pi9  'killall $(APPNAME)'
	#@ssh pi10 'killall $(APPNAME)'
	#@ssh pi11 'killall $(APPNAME)'
	#@ssh pi12 'killall $(APPNAME)'
	#@ssh pi13 'killall $(APPNAME)'
	#@ssh pi14 'killall $(APPNAME)'
	#@ssh pi15 'killall $(APPNAME)'
	#@ssh pi16 'killall $(APPNAME)'
	#@ssh pi17 'killall $(APPNAME)'
	#@ssh pi18 'killall $(APPNAME)'
	#@ssh pi19 'killall $(APPNAME)'
	#@ssh pi20 'killall $(APPNAME)'
	#@ssh pi21 'killall $(APPNAME)'
	#@ssh pi22 'killall $(APPNAME)'
	#@ssh pi23 'killall $(APPNAME)'
	#@ssh pi24 'killall $(APPNAME)'
	#@ssh pi25 'killall $(APPNAME)'
	#@ssh pi26 'killall $(APPNAME)'
	#@ssh pi27 'killall $(APPNAME)'
	
