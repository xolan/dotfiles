#!/usr/bin/env python
import sh
import re

def main():
    MAX = 0xFFFF
    ICON_VOL_HIGH = '\uf028'
    ICON_VOL_MED  = '\uf027'
    ICON_VOL_LOW  = '\uf026'
    # 'pacmd list-sinks | grep "* index" | awk \'{print $3}\''
    dump = str(sh.pacmd('dump').wait())
    for line in dump.split('\n'):
        if line.startswith('set-sink-volume alsa'):
            vol = line.split(' ')[-1]
            vol = int(vol, 16) / MAX
            vol = vol * 100
            icon = ICON_VOL_LOW
            if vol >= 25:
                icon = ICON_VOL_MED
            if vol >= 50:
                icon = ICON_VOL_HIGH
            print('{icon} {00:.0f}%'.format(round(vol, 0), icon=icon))
            break


if __name__ == '__main__':
    main()
