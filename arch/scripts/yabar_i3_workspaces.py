#!/usr/bin/env python
import sh
import json


def process():
    _workspaces = sh.i3_msg(
        '-t', 'get_workspaces'
    )
    _workspaces.wait()
    _workspaces = '"workspaces":' + str(_workspaces)

    output = '''{
        %(workspaces)s
    }''' % {
        'workspaces': _workspaces
    }
    return json.loads(output)

def format_workspaces(workspaces):

    def pm(w):
        m = {
            'foreground': '#FFFFFFFF' if w.get('focused') else '#FFFFFFCC',
            'underline': 'single' if w.get('urgent') else 'none',
            'name': w.get('name') if w.get('focused') else '!{}'.format(w.get('name').split(':')[0]) if w.get('urgent') else w.get('name').split(':')[0]
        }
        return '<span foreground="{foreground}" underline="{underline}">{name}</span>'.format(**m)

    return ' '.join([pm(w) for w in workspaces])

def main():
    input = process()
    print('  ' + format_workspaces(input.get('workspaces')))

if __name__ == '__main__':
    main()
