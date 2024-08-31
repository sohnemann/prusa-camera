# prusa-camera
Allows for the operation of a usb camera with Prusa Connect.

## Installation
1. Flash Image to SD
```
https://dl.armbian.com/orangepizero/Noble_current_server
```

2. Create user
3. Clone Repo and change into it
```
git clone https://github.com/sohnemann/prusa-camera.git
cd prusa-camera
```

4. Create Prusa Connect entry and click on *QR-Code* to load webcam window
5. Open Developer Tools and show Network tab
6. Click Start Webcam and read fingerprint & token from the request headers
7. Add fingerprint and token to *.env* file
8. If necessary, change the rotation via the *upload.sh* script (ffmpeg under **transpose** section)
9. Run install-all.sh & reboot
```
sudo sh ./install-all.sh && sudo reboot
```
