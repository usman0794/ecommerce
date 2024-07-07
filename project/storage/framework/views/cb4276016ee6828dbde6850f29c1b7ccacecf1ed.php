
  <h1>
      <?php if($get == 1): ?>
      Payment Completed Successfully
      <?php else: ?>
      Payment Not Suceesfull.
      <?php endif; ?>
  </h1>
    


<script type='text/javascript'>

  <?php if($get == 1): ?>
   var data = '{"status":true, "data": "Payment Completed Successfully", "error" : ""}';
  <?php else: ?>
   var data = '{"status": false, "data" : [], "error" : ["message" : "Payment Not Suceesfull."]}';
  <?php endif; ?>
  console.log(data);
  window.Print.postMessage(data);
  
    
</script>
<?php /**PATH /home/demoroyal/public_html/test/online_store_api/project/resources/views/frontend/thank.blade.php ENDPATH**/ ?>