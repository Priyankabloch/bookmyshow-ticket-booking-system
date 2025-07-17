<?php
include_once 'STANDARD.PHP';
if (isset($_POST['submit'])) 
{
    // Retrieve form data
    $BOOKING_ID= $_POST['BOOKING_ID'];
    $NAME= $_POST['NAME'];
    $EMAIL = $_POST['EMAIL'];
    $PHONE = $_POST['PHONE'];
    $NUM_TICKETS = $_POST['NUM_TICKETS']
    $insert = oci_parse($conn, 'INSERT INTO BOOKINGS (BOOKING_ID, NAME , EMAIL,PHONE,NUM_TICKETS) VALUES(:BOOKING_ID,:NAME, :EMAIL, :PHONE, :NUM_TICKETS)');
    oci_bind_by_name($insert,':BOOKING_ID', $BOOKING_ID);
    oci_bind_by_name($insert,':NAME', $NAME);
    oci_bind_by_name($insert,':EMAIL', $EMAIL);
    oci_bind_by_name($insert,':PHONE', $PHONE);
    oci_bind_by_name($insert,':NUM_TICKETS', $NUM_TICKETS);

    $execute = oci_execute($insert);
    
// Execute command to check Oracle TNS Listener status
if($execute)
{
    $commit = oci_parse($conn,'commit');
    oci_execute($commit);
    echo "BOOKED SUCCESSFULLY";
}
oci_free_statement($insert);}
else
{
    print "connected to Oracle!";
}
oci_close($conn);

?>