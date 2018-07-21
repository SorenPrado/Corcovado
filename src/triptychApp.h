#pragma once

#include "ofMain.h"
#include "ofxXmlSettings.h"
#include "ofxOMXPlayer.h"
#include "ofxOscSender.h"
#include "ofxOscReceiver.h"
#include <unistd.h>
#include <sys/reboot.h>


#include <netdb.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <ifaddrs.h>



#define SETTINGS_FILE "/home/pi/playback_settings.xml"
#define SOURCE_MOVIE "/var/ramdisk/source.mov"
#define PORT 32748
#define NUM_MSG_STRINGS 20

class triptychApp : public ofBaseApp{
    
public:
    
    void setup();
    void update();
    void draw();
    
    char master_ip[32];
    char slave1_ip[32];
    char slave2_ip[32];
    char slave3_ip[32];
    char slave4_ip[32];
    char slave5_ip[32];
    char slave6_ip[32];
    char slave7_ip[32];
    char slave8_ip[32];
    char slave9_ip[32];
    char slave10_ip[32];
    char slave11_ip[32];
    char slave12_ip[32];
    char slave13_ip[32];
    char slave14_ip[32];
    char slave15_ip[32];
    char slave16_ip[32];
    char slave17_ip[32];
    char slave18_ip[32];
    char slave19_ip[32];
    char slave20_ip[32];
    char slave21_ip[32];
    char slave22_ip[32];
    char slave23_ip[32];
    char slave24_ip[32];
    char slave25_ip[32];
    char slave26_ip[32];
    //enum Mode {MASTER, SLAVE1, SLAVE2, SLAVE};
    //Mode mode;
    

    int get_local_ip(char*);
    int get_ip_from_hostname(const char*, char*);
    
    // settings
    bool overlay;
    bool playfromram;

    struct display{
        string type;
        string hostname;
        string filename;
	bool isOnline;
	char ip[32];
	ofxOscSender senders[8];
    };

    void send_slave_checkin(display *) ;
    bool are_slaves_online(ofxOscReceiver *, vector<display>);
    void send_master_reply();
    void check_for_master_reply(ofxOscReceiver *, bool *);
    void send_control_message(ofxOscSender *, string);
    void check_for_messages();

    void doTogglePause();
    void doRewind();
    void doQuit();
    void doReboot();
    void doPoweroff();

    void movieTogglePause();
    void movieRewind();
    void triptychQuit();
    void machineReboot();
    void machinePoweroff();
    
    ofxOMXPlayer omxPlayer;
    void keyPressed(int key);
    void keyReleased(int key);

    
    
private:
    char hstnm[128];
    string hostname; 

    ofxOscReceiver	receiver;
    //ofxOscSender sender;
   // ofxOscSender sender1;
   // ofxOscSender sender2;
    
    int		current_msg_string;
    std::string	msg_strings[NUM_MSG_STRINGS];
    float		timers[NUM_MSG_STRINGS];
    
    bool		playbackOn;
    void prepMovie(string);
    void copyfile(const char *, char  *);
    
    void makeSettings();
    void readSettings();
    void printSettings();
    
    string movie;
    
    vector<display> displays;
    display master;
    vector<display> slaves;
    
    
};

