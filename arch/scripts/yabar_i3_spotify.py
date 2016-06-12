#!/usr/bin/env python
import sh
import json

def main():
    meta = {
        'artist': str(sh.playerctl('metadata', 'artist').wait()),
        #'album': str(sh.playerctl('metadata', 'album').wait()),
        'track': str(sh.playerctl('metadata', 'title').wait()),
    }
    print('  {artist} - {track} '.format(**meta))

if __name__ == '__main__':
    try:
        main()
    except:
        pass
