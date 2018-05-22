# esx_boatshop

I did not create the code.  I only edited the esx_vehicleshop code to create the new shop.  This code, unlike other versions of vehicleshop that I've seen, doesn't interfere with the original esx_vehicleshop.

The personal boat menu can be opened with /pb (like the vehicle shop /pv command).

[REQUIREMENTS]

* Auto mode
  * No need to download another resource

* Player management (billing and boss actions)
  * esx_society => https://github.com/FXServer-ESX/fxserver-esx_society
  * esx_billing => https://github.com/FXServer-ESX/fxserver-esx_billing

[INSTALLATION]

1) CD in your resources/[esx] folder
2) Clone the repository
```
git clone https://github.com/FXServer-ESX/fxserver-esx_vehicleshop esx_vehicleshop
```
3) Import esx_vehicleshop.sql in your database

4) Add this in your server.cfg :

```
start esx_vehicleshop
```
5) If you want player management you have to set Config.EnablePlayerManagement to true in config.lua
