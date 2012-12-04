#Home machine (Linux)
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  export PATH="$HOME/bin:$PATH:."
  export EDITOR="gvim"
  export LC_TIME="en_GB.utf8"
  source ~/.keys
  export LUA_PATH="$HOME/lua/vendor/?.lua;;"
  export BROWSER=`which chromium-browser`
#Work machine (OSX)
elif [[ "$HOST" == "Steven-Webbs-iMac.local" ]]; then
  export PATH="~/bin:/usr/local/bin:$PATH:."
  export EDITOR="gvim"
  export LC_TIME="en_GB.utf8"
  export CLICOLOR="true"
  export LSCOLORS="gxfxcxdxbxegedabagacad"
  # This setting is for the new UTF-8 terminal support
  export LC_CTYPE=en_AU.UTF-8
  export LC_ALL=en_AU.UTF-8
fi
