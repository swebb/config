#Home machine (Linux)
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	export PATH="~/bin:$PATH:."
	export EDITOR="gvim"
	export LC_TIME="en_GB.utf8"
#Work machine (OSX)
elif [[ "$HOST" == "Steven-Webbs-iMac.local" ]]; then
	export PATH="~/bin:$PATH:."
	export EDITOR="gvim"
	export LC_TIME="en_GB.utf8"
	export CLICOLOR="true"
	export LSCOLORS="gxfxcxdxbxegedabagacad"
fi
