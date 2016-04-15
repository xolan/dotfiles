import sys
import dbus
session_bus = dbus.SessionBus()
spotify_bus = session_bus.get_object("org.mpris.MediaPlayer2.spotify",
                                     "/org/mpris/MediaPlayer2")
spotify_properties = dbus.Interface(spotify_bus,
                                    "org.freedesktop.DBus.Properties")
metadata = spotify_properties.Get("org.mpris.MediaPlayer2.Player", "Metadata")


def write(message):
    sys.stdout.write(message)
    sys.stdout.flush()

# ICON = "\uf28d"
ICON = "\uf144"  # playing
# ICON = "\uf28b"  # paused

write('  {} {} - {} \n'.format(ICON,
                               metadata['xesam:artist'][0],
                               metadata['xesam:title']))
