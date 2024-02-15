import argparse
import serial
import serial.tools.list_ports

parser = argparse.ArgumentParser(description='Drive stroboscope')
parser.add_argument('--port', '-p', help='Number of stroboscope COM port', default='COM16')
parser.add_argument('--baudrate', '-b', help='Baudrate', default=9600)
parser.add_argument('--status', '-s', help='State 1/0', default=1)
parser.add_argument('--power', '-pw', help='Power output 1/0', default=0)
parser.add_argument('--light', '-l', help='Light mode 1/0', default=0)
parser.add_argument('--brightness', '-br', help='Light brightness 0 - 100%', default=99)
parser.add_argument('--frequency', '-f', help='Frequency 1Hz - 1000Hz', default=100)
parser.add_argument('--period', '-pd', help='Period of flash 16μs - 65.000μs', default=1000)
args = parser.parse_args()

if (args.frequency * args.period) / 10000 > 100:
    print ("Invalid parameters frequency or period")
else:
    my_ser = serial.Serial(args.port, args.baudrate)
    buff = [args.status, args.power, args.light, args.brightness, args.frequency, args.period, 0]
    str_buff = '.'.join(str(x) for x in buff)

    my_ser.write(str_buff.encode())
    my_ser.close()

