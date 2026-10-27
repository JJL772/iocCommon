#==============================================================
#
#  Abs:  Setup NFS Mount for RTEMS icos
#
#  Name: nfsMount.cmd
#
#  Side:  Warning!! Coldfire processor RTEMS cannot
#         interpret nodenames, so must specifiy IP adddress.
#         
#  Facility: SLAC Controls (Development)
#
#  Auth: 20-Feb-2020, K. Luchini      (LUCHINI):
#  Rev:  dd-mmm-yyyy, Reviewer's Name (USERNAME)
#--------------------------------------------------------------
#  Mod:
#       14-Oct-2026, J. Lorelli      (LORELLI):
#         Modified for use outside of SLAC systems.
#       25-Oct-2022, K. Luchini      (LUCHINI):
#         remove /facilty, mount doesn't work
#       12-Oct-2022, K. Luchini      (LUCHINI):
#         add toolsData and /tools
#         add facilityData and /facility
#
#==============================================================
#
toolsData=pathSubstitute("/sdf/group/cds/sw/epics/tools")
iocData=pathSubstitute("/sdf/data/cds/dev/ioc/%H")
restore_filename=pathSubstitute("/sdf/data/cds/dev/ioc/%H/restore/%H.sav")

# Used by spear applications
nfsMount(getenv("NFS_FILE_SYSTEM"),iocData ,"/dat")

# Used by eed applications
nfsMount(getenv("NFS_FILE_SYSTEM"),iocData      ,"/data")
nfsMount(getenv("NFS_FILE_SYSTEM"),toolsData    ,"/tools")

# End of script
