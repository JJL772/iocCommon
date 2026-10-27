#=======================================================
#  Master Startup Sript for ioc-b084-rf02
#=======================================================
#setenv("ST_CMD", "st.cmd_DEV")
setenv("NO_POST_FILE", "1")
setenv("EPICS_IOC_APP","/home/iocCommon/ioc-b192-rf03/iocSpecificRelease/iocBoot/ioc-b192-rf03")
cexpsh("../common/st.cmd.rtems")

# End of file 
