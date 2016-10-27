SUMMARY = "Adds files to the default file system"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://ros.sh \
            file://monarc.launch \
            file://monarc_no_camera.launch"

do_install_append() {
	install -d ${D}${sysconfdir}/profile.d/
	install -m 0644 ${WORKDIR}/ros.sh ${D}${sysconfdir}/profile.d/ros.sh

	install -d ${D}/home/root
	install -m 0644 ${WORKDIR}/monarc.launch ${D}/home/root/monarc.launch
	install -m 0644 ${WORKDIR}/monarc_no_camera.launch ${D}/home/root/monarc_no_camera.launch
}
