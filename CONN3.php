<?php
include_once 'STANDARD.PHP';
if (isset($_POST['submit'])) 
{
    // Retrieve form data
    $BOOKING_ID= $_POST['PAYMENT_ID'];
    $NAME= $_POST['CUSTOMER_ID'];
    $EMAIL = $_POST['AMOUNT'];
    $PHONE = $_POST['PAYMENT_DATE'];
    $NUM_TICKETS = $_POST['PAYMENT_METHOD']
    $insert = oci_parse($conn, 'INSERT INTO PAYMENTS (PAYMENT_ID, CUSTOMER_ID , AMOUNT ,PAYMENT_ID,PAYMENT_METHOD) VALUES(:PAYMENT_ID,:CUSTOMER_ID, :AMOUNT, :PAYMENT_DATE, :PAYMENT_METHOD)');
    oci_bind_by_name($insert,':PAYMENT_ID', $PAYMENT_ID);
    oci_bind_by_name($insert,':CISTOMER_ID', $CUSTOMER_ID);
    oci_bind_by_name($insert,':AMOUNT', $AMOUNT);
    oci_bind_by_name($insert,':PAYMENT_DATE', $PAYMENT_DATE);
    oci_bind_by_name($insert,':PAYMENT_METHOD', $PAYMENT_METHOD);

    $execute = oci_execute($insert);
    
// Execute command to check Oracle TNS Listener status
if($execute)
{
    $commit = oci_parse($conn,'commit');
    oci_execute($commit);
    echo "PAYMENT SUCCESSFULLY";
}
oci_free_statement($insert);}
else
{
    print "connected to Oracle!";
}
oci_close($conn);

?>