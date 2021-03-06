#!/bin/bash

# TODO: Add new --force-clean option to xdg-app-builder later
rm -Rf ./app
rm -Rf ./repo

xdg-app-builder --repo=sparkleshare.org --gpg-sign=051F66BD app org.sparkleshare.SparkleShare.json
xdg-app --user uninstall org.sparkleshare.SparkleShare
xdg-app --user remote-delete sparkleshare
xdg-app --user remote-add --gpg-import=sparkleshare.gpg sparkleshare ./sparkleshare.org/
xdg-app --user install sparkleshare org.sparkleshare.SparkleShare

