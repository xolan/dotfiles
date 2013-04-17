#!/usr/bin/env python

import sys
from clint.textui import colored, puts
from sh import cat

def output(status, post=''):
    if 'awesome' in post.split(' '):
        suffix = '</span>'
        if status > 75:
            prefix = '<span color="green">'
            puts(prefix + str(int(status)) + '%' + suffix)
        elif status > 25:
            prefix = '<span color="yellow">'
            puts(prefix + str(int(status)) + '%' + suffix)
        else:
            prefix = '<span color="red">'
            puts(prefix + str(int(status)) + '%' + suffix)
    else:
        if status > 75:
            puts(colored.green(str(int(status))+post))
        elif status > 25:
            puts(colored.yellow(str(int(status))+post))
        else:
            puts(colored.red(str(int(status))+post))

    return 0

def main(argv=None):
    if argv:
        post = ' '.join(argv[1:])
    else:
        post = ''
    cap = int(cat('/sys/class/power_supply/BAT0/energy_full'))
    now = int(cat('/sys/class/power_supply/BAT0/energy_now'))
    per = (now/cap)*100

    return output(per, post)

if __name__ == '__main__':
    sys.exit(main(sys.argv))
