# com.castsoftware.uc.ImgUserLogReader
## Welcome to the com.castsoftware.uc.ImgUserLogReader wiki!

### 	**OVERVIEW**
* 	The ImgUserLogReader is the custom-built utility to track user activity in Cast Imaging, admins are not part of it 
        as they get excluded dynamically.
* 	This utility can be used to get insights on application team’s engagement on Cast Imaging
* 	This utility can be executed from any machine provided there is access to the CAST DB server
* Audit-trail log from the Cast Imaging server should be used as the input

***

###	**PREREQUISITES**
*    Connectivity to the DB server Hostname:port 
* 	Create custom reporting schema with the name ‘imgreporting’ and create two tables as ‘AuditLogRaw’ and ‘AuditLogRawLogin’ on the DB server 
        which stores all the log data in table format.                         
        _Note this is a one-time activity_
* 	If the schema needs to be moved in future, both schema and tables needs to be recreated in the target server
* .Net framework 4.0 and above with IIS web server is compatible to run the tool


***

###     **EXECUTE TOOL**
* 	To run the utility, double click on ImgReader.exe
![image](https://user-images.githubusercontent.com/104379146/165299843-fc6f2e7a-6034-4fa8-a1a2-80608f6014ff.png)

* UI will be shown and below fields are auto populated, if not please provide the DB server details
* Enter only Server details and the log location

   <img width="600" height="400" alt="image" src="https://user-images.githubusercontent.com/104379146/165302129-13015261-769d-48b2-8715-2a8a699cec44.png">

* Audit trail log can be found from below location in Imaging server

  _**C:/Program Files/CAST/ImagingSystem/logs/audit-trail.log**_
![image](https://user-images.githubusercontent.com/104379146/165305636-7fa1940f-1ac5-4817-84c1-b6950171cda0.png)
* 	Take a copy of this log and place it at the AuditLog folder provided in tool

***

###	**PROCESS DATA**
* After providing server details, click on _Select File_ and browse for audit-trail log placed in AuditLog folder
* Click on ‘Process Data’.
* This will update the backend postgres tables with the info from the log.
  
  <img width="600" height="400" alt="image" src="https://user-images.githubusercontent.com/104379146/165308455-32e067e8-2e2f-446a-8c12-56f80b82128e.png">
* Also generate raw data in csv format in a ‘Results’ folder of the tool

  <img width="720" height="90" alt="image" src="https://user-images.githubusercontent.com/104379146/165314896-51e592d6-0879-460e-8d04-add44dc0e4d4.png">
* 	The generated csv files can be used to display as graphical presentation in the frontend using column entities or tools like splunk.
* 	The “appdata.csv” contains application details accessed by the users.
Attributes - DataTime, IP, HttpStatus, HttpMethod, URL, UserEmail, Role, Id, Browser and Application details.
  
      <img width="850" alt="image" src="https://user-images.githubusercontent.com/104379146/165333242-1a934735-1a51-4491-9316-e378337367a8.png">
 
* 	The “logindata.csv” contains login details of the users. Attributes – DateTime, IP, Status, Login and UserEmail

      <img width="430" height="140" alt="image" src="https://user-images.githubusercontent.com/104379146/165319135-59bbe579-64bb-400a-9d26-be8fa6d0bc08.png">

***

### **GENERATE OUTPUT**
* Final step is to Generate Output, which gives graphical presentation of the complete data generated from the logs 
* Click on Generate Report

  <img width="600" height="400" alt="image" src="https://user-images.githubusercontent.com/104379146/165324294-5ef9f56a-4b7b-4302-9da6-c0a2f6dbea2e.png">

*	This will generate an output HTML file in a ‘Results’ folder.

     <img width="720" height="100" alt="image" src="https://user-images.githubusercontent.com/104379146/165325036-23e71c16-3e55-40e8-9d33-b3c09ec86734.png">

***

### 	**DATA FROM THE TOOL**
* Open the LogReport.html to view data and graphs
* 	The HTML contains 5 tabs

     <img width="720" height="90" alt="image" src="https://user-images.githubusercontent.com/104379146/165327494-adf7e489-b4d1-48cd-bf6f-52dc23e7bc56.png">
>	#### CHARTS
> The charts tab contains 4 charts namely
> 1. Application Usage% - Overall: 
> 1. Number of unique users per Application – Overall
> 1. Number of hits per Application by Month
> 1. Number of unique hits per Application by Month

> 	#### DATA BY USER
> *  Data sorted with respect to user
> *  This tab gives you the user details and which application was accessed and frequency of usage along with the date-time.

> 	#### DATA BY APPLICATION
> *  Data sorted with respect to application 
> *  This tab gives you the application details and which user accessed it and frequency of usage along with the date-time.

> 	#### LOGIN DATA
> * This tab gives you the number of logins date and login user details along with date-time

> 	#### ALL DATA
> * This tab gives you complete details of the activities done (views accessed in Imaging) in Imaging by the user 

### **REPORT EXPORT**
* Reports are available in CSV format in the '_Results_' folder
* This is generated as part of ‘_Process Data_’ step explained in [previous](https://github.com/CAST-Extend/com.castsoftware.uc.ImgUserLogReader/wiki/_new#process-data) section.




























