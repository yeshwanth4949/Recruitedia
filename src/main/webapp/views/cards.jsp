<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>View Organizations</title>
     <link href="css/style.css" type="text/css"  rel="stylesheet"/>
  
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css'><link rel="stylesheet" href="./style.css">

<style type="text/css">

/* demo shizzle only */
body {
  background: #eee;
  max-width: 900px;
    margin: 30px auto;
      padding: 20px;
    
/*   outline: 1px solid #ccc; */
}

myDiv
{

  


}


/* Still use global css (not utility css) for base typography etc? */
p {
  margin-bottom: 0.8em;
}


</style>

</head>
<body>

<!-- Nav Bar Start -->
<div style="background-color:black;">
<div class="clear-toggle"></div>
       
              <div id="main-menu" class="collapse scroll navbar-right">
                <ul class="nav">
                                
                  <li > <a href="loginsuccessadmin">Home</a> </li>
                  
                  <li > <a href="tutorial">Add Content</a></li>
                  
                  <li class="active"> <a href="cards">View Recruiters</a></li>
                  
                  <li > <a href="viewfromadmin">View JobSeekers Status</a></li>
                  
                  <li > <a href="home">Logout</a></li>
                    
                </ul>
              </div><!-- end main-menu -->
</div>


<hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr>

<div class="myDiv">

 <!-- Nav Bar End -->
<table>  
          

 

<div class="flex flex-wrap -m-3"> 
<c:forEach var="emp" items="${empdata}">
 
  <div class="w-full sm:w-1/2 md:w-1/3 flex flex-col p-3">
    <div class="bg-white rounded-lg shadow-lg overflow-hidden flex-1 flex flex-col">
      <div class="bg-cover h-48" ><!-- style="background-image: url(https://logos-world.net/wp-content/uploads/2021/08/Deloitte-Logo-700x394.png);" -->
      <img src="${emp.photo}">
      </div>
      
      
      <div class="p-4 flex-1 flex flex-col" style="
">
        <h3 class="mb-4 text-2xl">${emp.company_name}</h3>
        <div class="mb-4 text-grey-darker text-sm flex-1">
          <p>${emp.location}</p>
          </div>
        <a href="${emp.website}" class="border-t border-grey-light pt-2 text-xs text-grey hover:text-red uppercase no-underline tracking-wide" style="
">Website</a> &nbsp;&nbsp;&nbsp;<a href="/acceptreq/${emp.id}" class="border-t border-grey-light pt-2 text-xs text-grey hover:text-red uppercase no-underline tracking-wide" style="
">Accept</a>
      </div>
    </div>  
  </div>
      </c:forEach>
</div>


<!-- partial -->
  </table>
  
  
</div>
  
  
</body>
</html>


<!-- https://logos-world.net/wp-content/uploads/2021/08/Deloitte-Logo-700x394.png
      https://1000logos.net/wp-content/uploads/2020/08/Infosys-Logo.png 
      https://1000logos.net/wp-content/uploads/2021/05/IBM-logo-768x432.png
      https://1000logos.net/wp-content/uploads/2017/04/Microsoft-Logo-768x251.png
      https://1000logos.net/wp-content/uploads/2021/04/Accenture-logo-768x432.png
      
      
      accenture logos.net
      -->
      
      
<!--       Links 

https://www.accenture.com/ 
https://www.microsoft.com/ 
https://www.ibm.com/ 





-->