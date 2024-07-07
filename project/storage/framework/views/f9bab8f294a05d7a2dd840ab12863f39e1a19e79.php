


    <h1>
        <?php if($status == 1): ?>
        Deposit Completed Successfully
        <?php else: ?>
        Payment Not Suceesfull.
        <?php endif; ?>
    </h1>
    


<script type='text/javascript'>

    
    
  <?php if($status == 1): ?>
   var data = '{"status":true, "data": "Balance has been added to your account successfully.", "error" : ""}';
  <?php else: ?>
   var data = '{"status": false, "data" : [], "error" : ["message" : "Payment Not Suceesfull."]}';
  <?php endif; ?>
  console.log(data);
  window.Print.postMessage(data);
  
    



  
  
  
  
//   function listenMessage(msg) {
//     alert(msg);
// }

// if (window.addEventListener) {
//     window.addEventListener("message", listenMessage, false);
// } else {
//     window.attachEvent("onmessage", listenMessage);
// }
  
  
  
</script>
<?php /**PATH /home/demoroyal/public_html/test/online_store_api/project/resources/views/user/success.blade.php ENDPATH**/ ?>