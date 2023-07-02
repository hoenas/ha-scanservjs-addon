# ha-scanservjs-addon
scanservjs Home Assistant addon suitable for devices with x86 architecture. 

# CUPS Home Assistant Addon (x86 Compatible)

# Description

scanservjs is a web UI frontend for your scanner. It allows you to share one or more scanners (using SANE) on a network without the need for drivers or complicated installation. This was created primarily to support Home Assistant installations on devices with x86 architecture, such as AMD/Intel-based thin clients. The installed driver packages focuses on HP and Brother printer support.

# Considerations

* USB printers should be connected to the host device prior to starting this addon. If disconnected/connected during runtime, simply restart the addon. Similarly, ensure the printer is not idle/power saving before loading the scanservjs GUI.

* The repository includes a version of the "brscan4" Brother scanner driver that was downloaded directly from the Brother support website. This file is referenced within `Dockerfile` for driver installation and amendment of the SANE configuration file to include the driver. Please note that an additional line should be added to `Dockerfile` for network scanner support - see the bottom of the "Accessing Hardware" section of [this scanservjs documentation](https://github.com/sbs20/scanservjs/blob/master/docs/docker.md#accessing-hardware).
