#===============================================================================
proc Delnov_Create_Line { pnt1_name pnt2_name } {
#-------------------------------------------------------------------------------

  set create [pw::Application begin Create]

    set pnts [pw::SegmentSpline create]

    # Define points for the circle
    $pnts addPoint [list 0 0 [pw::DatabaseEntity getByName $pnt1_name]]
    $pnts addPoint [list 0 0 [pw::DatabaseEntity getByName $pnt2_name]]

    # Define curve for this connection
    set curve [pw::Connector create]
    $curve addSegment $pnts
    $curve calculateDimension

  $create end
  unset create
}

