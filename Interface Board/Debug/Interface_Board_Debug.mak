SHELL = cmd.exe

#
# ZDS II Make File - Interface Board project, Debug configuration
#
# Generated by: ZDS II - Z8 Encore! Family 5.0.0 (Build 11011703)
#   IDE component: d:5.0:11011302
#   Install Path: C:\Program Files (x86)\ZiLOG\ZDSII_Z8Encore!_5.0.0\
#

RM = del

ZDS = C:\PROGRA~2\ZiLOG\ZDSII_~1.0
BIN = $(ZDS)\bin
# ZDS include base directory
INCLUDE = C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include
# intermediate files directory
WORKDIR = C:\Users\ADMINI~1\DOCUME~1\Dropbox\FISHBR~1\HM-10H~1\INTERF~1\Debug

CC = @$(BIN)\eZ8cc
AS = @$(BIN)\eZ8asm
LD = @$(BIN)\eZ8link
AR = @$(BIN)\eZ8lib

CFLAGS =  \
-bfpack:tight -NOfastcall -const:RAM -define:_Z8F6423  \
-define:_Z8ENCORE_XP_64XX_SERIES -define:_ZSL_DEVICE_PORTD  \
-define:_ZSL_PORT_USED -define:_ZSL_DEVICE_PORTA  \
-define:_ZSL_DEVICE_UART1 -define:_ZSL_UART_USED  \
-define:_MODEL_LARGE -define:_Z8ENCORE_F642X -genprintf  \
-NOkeepasm -keeplst -NOlist -NOlistinc -model:L -NOoptlink  \
-promote -noregvar -reduceopt  \
-stdinc:"..;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\zilog;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\zilog\Z8ENCO~2;$(INCLUDE)\zilog"  \
-usrinc:"..;" -debug -NOrevaa -cpu:Z8F6423  \
-asmsw:"   \
	-define:_Z8F6423=1 -define:_Z8ENCORE_XP_64XX_SERIES=1  \
	-define:_ZSL_DEVICE_PORTD=1 -define:_ZSL_PORT_USED=1  \
	-define:_ZSL_DEVICE_PORTA=1 -define:_ZSL_DEVICE_UART1=1  \
	-define:_ZSL_UART_USED=1 -define:_MODEL_LARGE=1  \
	-define:_Z8ENCORE_F642X=1  \
	-include:"..;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\zilog;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\zilog\Z8ENCO~2"  \
	-list -NOlistmac -pagelen:56 -pagewidth:80 -quiet -sdiopt -warn  \
	-debug -NOigcase -NOrevaa -cpu:Z8F6423"

ASFLAGS =  \
-define:_Z8F6423=1 -define:_Z8ENCORE_XP_64XX_SERIES=1  \
-define:_ZSL_DEVICE_PORTD=1 -define:_ZSL_PORT_USED=1  \
-define:_ZSL_DEVICE_PORTA=1 -define:_ZSL_DEVICE_UART1=1  \
-define:_ZSL_UART_USED=1 -define:_MODEL_LARGE=1  \
-define:_Z8ENCORE_F642X=1  \
-include:"..;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\std;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\zilog;C:\PROGRA~2\ZiLOG\ZDSII_~1.0\include\zilog\Z8ENCO~2"  \
-list -NOlistmac -name -pagelen:56 -pagewidth:80 -quiet -sdiopt  \
-warn -debug -NOigcase -NOrevaa -cpu:Z8F6423

LDFLAGS = @.\Interface_Board_Debug.linkcmd
OUTDIR = C:\Users\ADMINI~1\DOCUME~1\Dropbox\FISHBR~1\HM-10H~1\INTERF~1\Debug

build: Interface_Board

buildall: clean Interface_Board

relink: deltarget Interface_Board

deltarget: 
	@if exist $(WORKDIR)\Interface Board.lod  \
            $(RM) $(WORKDIR)\Interface Board.lod
	@if exist $(WORKDIR)\Interface Board.hex  \
            $(RM) $(WORKDIR)\Interface Board.hex
	@if exist $(WORKDIR)\Interface Board.map  \
            $(RM) $(WORKDIR)\Interface Board.map

clean: 
	@if exist $(WORKDIR)\Interface Board.lod  \
            $(RM) $(WORKDIR)\Interface Board.lod
	@if exist $(WORKDIR)\Interface Board.hex  \
            $(RM) $(WORKDIR)\Interface Board.hex
	@if exist $(WORKDIR)\Interface Board.map  \
            $(RM) $(WORKDIR)\Interface Board.map
	@if exist $(WORKDIR)\Interface.obj  \
            $(RM) $(WORKDIR)\Interface.obj
	@if exist $(WORKDIR)\zsldevinit.obj  \
            $(RM) $(WORKDIR)\zsldevinit.obj
	@if exist $(WORKDIR)\oldinterface.obj  \
            $(RM) $(WORKDIR)\oldinterface.obj

# pre-4.11.0 compatibility
rebuildall: buildall 

LIBS = 

OBJS =  \
            $(WORKDIR)\Interface.obj  \
            $(WORKDIR)\zsldevinit.obj  \
            $(WORKDIR)\oldinterface.obj

Interface_Board: $(OBJS)
	 $(LD) $(LDFLAGS)

$(WORKDIR)\Interface.obj :  \
            C:\Users\ADMINI~1\DOCUME~1\Dropbox\FISHBR~1\HM-10H~1\INTERF~1\Interface.c  \
            $(INCLUDE)\std\STDARG.H  \
            $(INCLUDE)\zilog\defines.h  \
            $(INCLUDE)\zilog\dmadefs.h  \
            $(INCLUDE)\zilog\gpio.h  \
            $(INCLUDE)\zilog\uart.h  \
            $(INCLUDE)\zilog\uartdefs.h  \
            $(INCLUDE)\std\STDARG.H  \
            $(INCLUDE)\std\STDIO.H  \
            $(INCLUDE)\std\STDLIB.H  \
            $(INCLUDE)\std\STRING.H  \
            $(INCLUDE)\zilog\FORMAT.H  \
            $(INCLUDE)\zilog\Zconst.h  \
            $(INCLUDE)\zilog\ez8.h
	 $(CC) $(CFLAGS) C:\Users\ADMINI~1\DOCUME~1\Dropbox\FISHBR~1\HM-10H~1\INTERF~1\Interface.c

$(WORKDIR)\zsldevinit.obj :  \
            C:\Users\ADMINI~1\DOCUME~1\Dropbox\FISHBR~1\HM-10H~1\INTERF~1\zsldevinit.asm  \
            $(INCLUDE)\zilog\ez8dev.inc  \
            $(INCLUDE)\zilog\gpio.inc
	 $(AS) $(ASFLAGS) C:\Users\ADMINI~1\DOCUME~1\Dropbox\FISHBR~1\HM-10H~1\INTERF~1\zsldevinit.asm

$(WORKDIR)\oldinterface.obj :  \
            C:\Users\ADMINI~1\DOCUME~1\Dropbox\FISHBR~1\HM-10H~1\INTERF~1\oldinterface.c
	 $(CC) $(CFLAGS) C:\Users\ADMINI~1\DOCUME~1\Dropbox\FISHBR~1\HM-10H~1\INTERF~1\oldinterface.c
