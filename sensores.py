import mraa, upm, time, sys
from upm import pyupm_jhd1313m1
from upm import pyupm_th02

display = pyupm_jhd1313m1.Jhd1313m1(0,0x3E, 0x62)
display.setColor(0,0,255)

sensores = pyupm_th02.TH02(6,0x40)

Switch = 0
Temperature = 0
Humidity = 0

while True:

    Temperature = round(sensores.getTemperature(),1)
    Humidity = round(sensores.getHumidity(),1)
    
    print "La temperatura es de %.1f C y la humedad de %.1f%% \n" %(Temperature, Humidity)
#    print 'La temperatura es: '  + str(Temperature)
#    print 'La humedad es:     ' + str(Humidity) 
    display.setCursor(0,0)
    display.write('TEMP: ' + str(Temperature))
    display.setCursor(1,0)
    display.write('HUMI:  ' + str(Humidity))
    time.sleep(1.5)
    exit()
    








