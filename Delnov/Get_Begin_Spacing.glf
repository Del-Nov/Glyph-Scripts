#===============================================================================
proc Delnov_Get_Begin_Spacing { con } {
#-------------------------------------------------------------------------------
# Calls sister function: Delnov_Get_Actual_Spacing
#-------------------------------------------------------------------------------

  set spc [Delnov_Get_Actual_Spacing $con 1]
  return $spc
}

