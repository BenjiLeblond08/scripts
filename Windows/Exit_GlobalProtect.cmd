sc config PanGPS start=demand
sc stop PanGPS
taskkill /IM "PanGPS.exe" /F
taskkill /IM "PanGPA.exe" /F
