import argparse


parser = argparse.ArgumentParser(description='Drive stroboscope')
parser.add_argument('--port', '-p', help='Number of stroboscope COM port', default='COM16')
parser.add_argument('--baudrate', '-b', help='Baudrate', default=9600)
parser.add_argument('--status', '-s', help='State 1/0', default=1)
parser.add_argument('--power', '-pw', help='Power output 1/0', default=0)
parser.add_argument('--light', '-l', help='Light mode 1/0', default=0)
parser.add_argument('--brightness', '-br', help='Light brightness 0 - 100%', default=50)
parser.add_argument('--frequency', '-f', help='Frequency 1Hz - 1000Hz', default=1000)
parser.add_argument('--period', '-pd', help='Period of flash 16μs - 65.000μs', default=10)
args = parser.parse_args()


