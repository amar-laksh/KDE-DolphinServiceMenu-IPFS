#!/usr/bin/env bash

SCRIPTNAME=$(basename "$0")
CONFIG_FILE="${HOME}/.config/ipfsrc"
SERVICE_PATH="$(kf5-config --path services | cut -d':' -f1)ServiceMenus"
ICON_PATH="$(kf5-config --path icon | cut -d':' -f1)hicolor/scalable/apps"

case "$1" in
	install)
		[ ! -d "$SERVICE_PATH" ] && mkdir --verbose --parents "$SERVICE_PATH"
		[ ! -d "$ICON_PATH" ] && mkdir --verbose --parents "$ICON_PATH"

		if [ ! -f "./ipfs.desktop" ] || [ ! -f "./dsm-ipfs" ]; then
			echo "error: no files to install"
			exit 1
		fi
		if [ ! -f "/usr/share/icons/hicolor/scalable/apps/kipi-ipfs.svgz" ]; then
			if ! install --verbose -m 644 ./kipi-ipfs.svgz "$ICON_PATH" 2>/dev/null; then
				echo "error: no icon file found"
			fi
		fi
		install --verbose -m 644 ./ipfs.desktop "$SERVICE_PATH"
		sudo install --verbose -m 755 ./dsm-ipfs /usr/bin/
		;;

	uninstall)
		rm --verbose "${SERVICE_PATH}/ipfs.desktop"
		rm --verbose "${HOME}/.config/ipfsrc"
		rm --verbose "${ICON_PATH}/kipi-ipfs.svgz" 2>/dev/null
		sudo rm --verbose /usr/bin/dsm-ipfs
		;;

	*|-h)
		echo "usage:"
		echo "  $SCRIPTNAME install"
		echo "  $SCRIPTNAME uninstall"
		echo
		echo "settings:"
		echo "  install    install the service"
		echo "  uninstall  uninstall the service"
esac
