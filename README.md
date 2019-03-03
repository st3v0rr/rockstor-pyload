# Rockstor PyLoad

## Introduction

pyLoad is a fast, lightweight and full featured download manager for many One-Click-Hoster, container formats like DLC, video sites or just plain http/ftp links. It aims for low hardware requirements and platform independence to be runnable on all kind of systems (desktop pc, netbook, NAS, router).

Despite its strict restriction it is packed full of features just like webinterface, captcha recognition, unrar and much more.

pyLoad is divided into core and clients, to make it easily remote accessible. Currently there are a webinterface, command line interface, and a GUI written in Qt.

Source [official pyload](https://pyload.net/).

## Prerequisites

- Running Rockstor-NAS System
- Activated Rock-On Service
- Two Rockstor Shares (recommended 0.1 GiB for config and >128 GiB for downloads)

## Installation and Running

Installing is very easy.

#### pyload.json

- Login via SSH to your Rockstor-NAS
- Copy the pyload.json into /opt/rockstor/rockons-metastore (create the folder if not present)

#### Webinterface

- Login to your Rockstor-WebUI
- Go into the Rock-Ons section and click the update-button
- You should now see a new pyload Rock-On
- Hit the install button and follow the process
- Wait until pyload becomes ready (if errors occur check the Troubleshooting section in this README)

#### Pyload-Webinterface

- Open the Pyload Webinterface (http://your_ip:your_port/)
- Login with default credentials pyload/pyload

Don't forget to change the default password!

## Troubleshooting
If the pyload Rock-On  won't start, please make shure you have TWO different Rockstor Shares selected.
Another known issue is, that the default webinterface port 8000 is already in use. Try any other port between 8000 and 9999
