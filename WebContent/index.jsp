<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
var hitVal =0;
(function worker() {
  $.ajax({
    url : './ImageHandler',
    success: function(data) {
    	  if(hitVal!=0)
    		  {
    	   $('#imgSrc').attr('src',data);
    		  }
    		  },
    		  
    complete: function() {
    	hitVal = hitVal+1;
      setTimeout(worker, 30000);
    }
  });
})();

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div name="imageBlock" >
 <table border="none" width=100% height="auto">
 <tr>
 <td>
   <table>
     <tr>
       <lable>Name : Demo</lable></br>
     </tr>
     <tr>
      <lable>Address : Demo2</lable></br>
     </tr>
     <tr>
      <lable>LOC : Demo3</lable></br>
     </tr>
     <tr>
     <lable>DOB : Demo4</lable>
     </tr>
   </table>
 </td>
 <td>
    <img height="auto" id="imgSrc" width="auto" src="./images/springsource.png">
 </td>
 </tr>
 </table>
 </div>
</body>
</html>