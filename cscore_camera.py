try:
    import cscore
    camera = cscore.UsbCamera("usbcam", 0)
    camera.setVideoMode(cscore.VideoMode.PixelFormat.kMJPEG, 320, 240, 30)

    mjpegServer = cscore.MjpegServer("httpserver", 8081)
    mjpegServer.setSource(camera)
except BaseException as e:
    print("cscore error")
    print(e)
