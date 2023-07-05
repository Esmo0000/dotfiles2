from libqtile import hook
import subprocess
import os

# Run commands or spawn some applications when Qtile starts.
@ hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser(os.environ['XDG_BIN_HOME'] + '/autostart')
    subprocess.call([home])

@hook.subscribe.client_new
def client_new(client):
  if client.name == 'Brave-Browser':
    client.togroup('1')
  if client.name == 'VSCodium':
    client.togroup('2')
  if client.name == 'kitty':
    client.togroup('3')