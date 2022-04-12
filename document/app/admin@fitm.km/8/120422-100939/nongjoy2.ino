#include <Arduino.h>
#include "Nextion.h"
#include <WiFi.h>
#include <WiFiClient.h>
#include <WiFiServer.h>
#include "LineNotify.h"
#include "Camera_Exp.h"
#include "NexButton.h"
#include "NexText.h"
WiFiClientSecure client;
const char* ssid = "Kornhandsomenaja";    //  your network SSID (name)
const char* pass = "0929956129";   // your network password
const char* host = "script.google.com";
const int httpsPort = 443;

//const char* ssid = "Peter";    //  your network SSID (name)
//const char* pass = "petergun1";   // your network password
#define LINE_TOKEN "CfRRiG57NflfmfNOUU8yQiXRgucscSY3dvTM72D2cmN"
String GAS_ID = "AKfycbzTKHdZ02XDjRfzGFu3bLqgiY6ZmuXyVSyyzOVdv__-do8BP3xcgsIvFvu4fpow85kW-Q"; //--> spreadsheet *SCRIPT* ID //ใส่ Script ID ของ Spreadsheet

CAMERA cam;
LINENOTIFY line;
String t = "";
String h = "";
String a = "";
String b = "";
String message123 = "กล่องแจ้งเตือนภัย เริ่มทำงาน...";
String message1 = "ยืนยันการแจ้งเตือน ไม่มีเหตุการณ์ผิดปกติ";
String message3 = "แจ้งเตือน : หลอดไฟเสียหาย";
String message4 = "แจ้งเตือน : ถังดับเพลิงไม่ได้อยู่ที่ตรงจุด";
String message5 = "แจ้งเตือน : เจลล้างมือบริเวณนี้หมด";
String message6 = "แจ้งเตือน : ลิฟท์เสียใช้งานไม่ได้";
String message7 = "แจ้งเตือน : เกิดเหตุทะเลาะวิวาท";
String message8 = "แจ้งเตือน : เกิดเหตุไฟไหม้บริเวณนี้";
String message9 = "แจ้งเตือน : มีน้ำรั่วซึม";
String message10 = "แจ้งเตือน : หลอดไฟบริเวณนี้ไม่ได้ถูกปิด";
String message11 = "แจ้งเตือน : โต๊ะที่นั่งเสียหาย";
String message12 = "แจ้งเตือน : ถังขยะเต็ม";
String message13 = "แจ้งเตือน : เจ้าหน้าที่รับษาความปลอดภัยยังไม่มาทำการแจ้งเตือน";
int CurrentPage=0; 
NexPage   Page0 = NexPage(0, 0, "page0"); //หน้าแรก
NexPage   Page2 = NexPage(2, 0, "page2");  // ยืนยันไม่มีอะไรผิดปรกติ
NexPage   Page39 = NexPage(39, 0, "page39");  // ยืนยันการแจ้งเตือน
NexPage   Page1 = NexPage(1, 0, "page1");
NexButton btnPage1 = NexButton(1,1,"b0");
NexPage   Page7 = NexPage(7, 0, "page7");
NexButton btnPage7 = NexButton(7,1,"b1");
NexPage   Page10 = NexPage(10, 0, "page10");
NexButton btnPage10 = NexButton(10,1,"b0");
NexPage   Page13 = NexPage(13, 0, "page13");
NexButton btnPage13 = NexButton(13,1,"b2");
NexPage   Page16 = NexPage(16, 0, "page16");
NexButton btnPage16 = NexButton(16,1,"b0");
NexPage   Page21 = NexPage(21, 0, "page21");
NexButton btnPage21 = NexButton(21,1,"b0");
NexPage   Page24 = NexPage(24, 0, "page24");
NexButton btnPage24 = NexButton(24,1,"b2");
NexPage   Page27 = NexPage(27, 0, "page27");
NexButton btnPage27 = NexButton(27,1,"b0");
NexPage   Page30 = NexPage(30, 0, "page30");
NexButton btnPage30 = NexButton(30,1,"b1");
NexPage   Page35 = NexPage(35, 0, "page35");
NexButton btnPage35 = NexButton(35,1,"b0");
NexPage   Page38 = NexPage(38, 0, "page38");
NexButton btnPage38 = NexButton(38,1,"b1");
NexTouch *nex_listen_list[] = {
      &btnPage1,
      &btnPage7,
      &btnPage10,
      &btnPage13,
      &btnPage16,
      &btnPage21,
      &btnPage24,    
      &btnPage27,
      &btnPage30,
      &btnPage35,
      &btnPage38,
      NULL
};
void Callback1(void *ptr) {
    Line_Notify(message1);
    String t = "Safe";
    String h = "OK";
    delay(1000);
    Page2.show();
    Serial.println("กำลังจะถ่ายรูป");
    String res;
    esp_err_t err;
    err = cam.capture();
    if (err == ESP_OK)
    {
      res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
      Serial.println(res);
    }
    delay(1000);
    Page0.show();
    sendData(t,h); 
}

void Callback7(void *ptr) {
  Line_Notify(message3);
  String t = "brokenlamp";
  String h = "OK";
  delay(1000);
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
}
void Callback10(void *ptr) {
  Line_Notify(message4);
  String t = "lost fire extinguisher";
  String h = "OK";
  delay(1000);         
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
  sendData(t,h);
}
void Callback13(void *ptr) {
  Line_Notify(message5);
  String t = "lost fire extinguisher";
  String h = "OK";
  delay(1000);
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
  sendData(t,h);
}
void Callback16(void *ptr) {
  Line_Notify(message6);
  String t = "hand wash gel";
  String h = "OK";
   delay(1000);
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
  sendData(t,h);
}
void Callback21(void *ptr) {
  Line_Notify(message7);
  String t = "contend";
  String h = "OK";
   delay(1000);
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
  sendData(t,h);
}
void Callback24(void *ptr) {
  Line_Notify(message8);
  String t = "Fire";
  String h = "OK";
   delay(1000);
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
  sendData(t,h);
}
void Callback27(void *ptr) {
  Line_Notify(message9);
  String t = "Water leak";
  String h = "OK";
   delay(1000);
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
  sendData(t,h);
}
void Callback30(void *ptr) {
  Line_Notify(message10);
  String t = "The lamp is not turned off";
  String h = "OK";
   delay(1000);
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
  sendData(t,h);
}
void Callback35(void *ptr) {
  Line_Notify(message11);
  String t = "Broken table";
  String h = "OK";
    delay(1000);
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
  sendData(t,h);
}
void Callback38(void *ptr) {
  Line_Notify(message12);
  String t = "Trash full";
  String h = "OK";
   delay(1000);
  Page39.show();
  String res;
  esp_err_t err;
  err = cam.capture();
  if (err == ESP_OK)
  {
    res = line.sendImage(LINE_TOKEN, "ผู้แจ้ง", cam.getfb(), cam.getSize());
    Serial.println(res);
  }
  else
  Serial.println("NO");
  delay(1000);
  Page0.show();
  sendData(t,h);
}
void setup() {
  Serial.begin(115200);
  nexInit();
  delay(500);
  Serial.println("system starting..");
  btnPage1.attachPush(Callback1,&btnPage1); 
  btnPage7.attachPush(Callback7,&btnPage7);
  btnPage10.attachPush(Callback10,&btnPage10);  
  btnPage13.attachPush(Callback13,&btnPage13);  
  btnPage16.attachPush(Callback16,&btnPage16);
  btnPage21.attachPush(Callback21,&btnPage21);  
  btnPage24.attachPush(Callback24,&btnPage24);  
  btnPage27.attachPush(Callback27,&btnPage27);  
  btnPage30.attachPush(Callback30,&btnPage30);
  btnPage35.attachPush(Callback35,&btnPage35);  
  btnPage38.attachPush(Callback38,&btnPage38);  
  ////โค้ดกล้อง/////
  cam.setFrameSize(CAMERA_FS_QVGA);
  cam.setMirror(false);
  cam.setVflip(false);
  cam.setWhiteBalance(true);
  esp_err_t err = cam.init();
  if (err != ESP_OK)
  {
    Serial.println("Camera init failed with error =" + String( err));
    return;
  }
  ////โค้ดกล้อง/////
  WiFi.begin(ssid, pass);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print("delay");
  }
  Serial.println("");
  Serial.println("WiFi connected");
//  startCameraServer();
  Serial.print("Camera Ready! Use 'http://");
  Serial.print(WiFi.localIP());
  Serial.println("' to connect");
}
void loop() {
  nexLoop(nex_listen_list);
  //Line_Notify(message13);
  delay(10000);
}
void Line_Notify(String message) {
      WiFiClientSecure client;
      if(!client.connect("notify-api.line.me", 443)) {
        Serial.println("connection failed");
        return;
      }
      String req = "";
        req += "POST /api/notify HTTP/1.1\r\n";
        req += "Host: notify-api.line.me\r\n";
        req += "Authorization: Bearer " + String(LINE_TOKEN) + "\r\n";
        req += "Cache-Control: no-cache\r\n";
        req += "User-Agent: ESP8266\r\n";
        req += "Content-Type: application/x-www-form-urlencoded\r\n";
        req += "Content-Length: " + String(String("message=" + message).length()) + "\r\n";
        req += "\r\n";
        req += "message=" + message;
      Serial.println(req);
      client.print(req);
      delay(20);
      Serial.println("-------------");
      while (client.connected()) {
        String line = client.readStringUntil('\n');
        if (line == "\r") {
          break;
        } 
        //Serial.println(line);
      }
  Serial.println("-------------");
}
void sendData(String value,String value2) {
  Serial.println("==========");
  Serial.print("connecting to ");
  Serial.println(host);
  if (!client.connect(host, httpsPort)) {
    Serial.println("connection failed");
    return;
  }

  String string_temp = value; 
  String string_humi = value2;
  String url = "/macros/s/" + GAS_ID + "/exec?temp=" + string_temp + "&humi="+string_humi; //  2 variables 
  Serial.print("requesting URL: ");
  Serial.println(url);

  client.print(String("GET ") + url + " HTTP/1.1\r\n" +
         "Host: " + host + "\r\n" +
         "User-Agent: BuildFailureDetectorESP8266\r\n" +
         "Connection: close\r\n\r\n");

  Serial.println("request sent");
  //----------------------------------------

  //---------------------------------------
  while (client.connected()) {
    String line = client.readStringUntil('\n');
    if (line == "\r") {
      Serial.println("headers received");
      break;
    }
  }
  String line = client.readStringUntil('\n');
  if (line.startsWith("{\"state\":\"success\"")) {
    Serial.println("esp8266/Arduino CI successfull!");
  } else {
    Serial.println("esp8266/Arduino CI has failed");
  }
  Serial.print("reply was : ");
  Serial.println(line);
  Serial.println("closing connection");
  Serial.println("==========");
  Serial.println();
  //----------------------------------------
}
