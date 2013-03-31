#!/system/xbin/sh
DATAGAPPS="/data/gapps"
PROPERTY="org.openaos.market_installed"

find_gapps() {
	CONTINUE=1
	I=20
	while [ $CONTINUE -eq 1 ] 
		do
			#echo "Iteration $I"
			let I-=1
			if [ $I -le 0 ]; then
				CONTINUE=0
			else
				MOUNTED=$(/system/xbin/mount |/system/xbin/grep " /mnt/storage ")
				if [ -n "$MOUNTED" ]; then
					CONTINUE=0
					#echo "$MOUNTED"
				fi
			fi
			if [ $CONTINUE -eq 1 ]; then
				/system/xbin/sleep 4
			fi
	done
	if [ -d /mnt/storage/download ]; then
		GAPPS=$(/system/xbin/ls -1t /mnt/storage/download/gapps*.zip 2>/dev/null|/system/xbin/head -n 1)
		echo "GAPPS=$GAPPS"
	fi
}

unpack_gapps() {
	#/system/xbin/rm -rf /data/data/com.android.vending* /cache/dalvik-cache/*Vend*
	mkdir -p "$DATAGAPPS"
	cd "$DATAGAPPS"
   /system/xbin/unzip -o "$1"
	#/system/xbin/unzip -o "$GAPPS" -d "$DATAGAPPS"
	/system/xbin/rm -f "$GAPPS"
	#Clean app folder
	/system/xbin/rm -f /system/app/Gallery2.apk
	/system/xbin/rm -f /system/app/Provision.apk
	/system/xbin/rm -f /system/app/QuickSearchBox.apk
	/system/xbin/rm -f /system/app/PlusOne.apk
	/system/xbin/rm -f /system/app/Vending.apk

}

create_links() {
	cd "$DATAGAPPS"
	GFILES=$(/system/xbin/find . -type f)
	for F in $GFILES ; do
		F=${F#.}
		echo "link: ${DATAGAPPS}${F}"
		mkdir -p `/system/xbin/dirname $F`
		ln -s "${DATAGAPPS}${F}" "$F"
	done
}

remove_links() {
	if [ -d "$DATAGAPPS" ] ; then
		cd "$DATAGAPPS"
		GFILES=$(/system/xbin/find . -type f)
		for F in $GFILES ; do
			F=${F#.}
			if [ -L "$F" ] ; then
				echo "rm: $F"
				rm -f "$F"
			else
				echo "NOTALINK: $F"
			fi
		done
	fi
}

find_gapps
if [ -n "$GAPPS" ] ; then
	echo "GAPPS found"
	remove_links
	rm -rf "$DATAGAPPS"
	unpack_gapps "$GAPPS"
	create_links
	echo "${PROPERTY}=1" >> /default.prop
else
	INSTALLED=`getprop "$PROPERTY"`
	echo "INSTALLED=$INSTALLED"
	if [ -z "$INSTALLED" -a -d "$DATAGAPPS" ] ; then
		echo "No links but gapps in $DATAGAPPS"
		create_links
		echo "${PROPERTY}=1" >> /default.prop
	else
		echo "No gapps in $DATAGAPPS or already installed"
	fi
fi
