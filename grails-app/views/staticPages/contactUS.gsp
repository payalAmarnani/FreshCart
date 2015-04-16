<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <title>Contact Us-Fresh Cart</title>
        <meta name="layout" content="main"/>

    </head>
    <body> 
        <div id="page-body">
       <div class="col-md-12">
        <div class="main-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <!--<div class="content">-->
                            <h1 style="color:#5bab93">Contact Us</h1>
                        <!--</div>-->
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <div class="content-block">
                            <h4>FreshCart Head Office</h4>
                            <p style="font-size:13px;">NO.8, BOON LAY WAY</p>
                            <p style="font-size:13px;">#02-08, 8@TRADEHUB21</p>
                            <p style="font-size:13px;">SINGAPORE 609964</p>
                        </div>            
                        <br>
                        <div class="contact_us">
                            <h5 style="font-size:15px">Customer Hotline</h5>
                            <p style="font-size:13px"><strong>T</strong>el: (65) 6515 2010</p>
                            <p style="font-size:13px"><strong>F</strong>ax: (65) 6397 4033</p>
                            <p style="font-size:13px">Mon - Fri: 9am - 6pm (except PH)</p>
                            <p style="font-size:13px">For training purposes, all calls may be recorded.</p>
                            <p style="font-size:13px">Email: general@freshcart.com</p>
                            
                            <br>
                            <h5 style="font-size:15px">Sales Enquiries</h5>
                            <p style="font-size:13px">Email: sales@freshcart.com</p>
                            <br></br>
  
                            <h5 style="font-size:15px">Marketing Enquiries</h5>
                        <p style="font-size:13px">Email: generalenquiries@freshcart.com</p>
                        </div>              
                    </div>
                
                <br>
                <!-- form -->
                <div class="col-md-6">
                    <form class="cmxform" id="submitForm" novalidate="novalidate">
                        <fieldset>
                        <div class="form-group">
                            <div class="title">
                            <label for="inputName">Name</label>
                                <span class="required">*</span>
                            </div>
                            
                            <input type="text" name="inputName" class="form-control" minlength="5" id="inputName" placeholder="Enter your name..." required>
                        </div>
                
                        <div class="form-group">
                            <label for="inputEmail">Email</label>
                            <span class="required">*</span>
                            <input type="email" name="inputEmail" class="form-control" id="inputEmail" placeholder="Enter your email address..." required> 
                        </div>
                    
                        <!-- Text Area -->
                        <div class="form-group">
                            <label for="inputComment">Message</label>
                            <span class="required">*</span>
                            <textarea class="form-control" name="inputComment" minlength="10" rows="5" id="inputComment" placeholder="Your comment..." required></textarea>          
                            </div>
                        <input class="submit btn-primary btn" id="formSubmit" type="submit" value="Submit">
                        </fieldset>
                    </form>
                    
                </div>
            </div>
        </div>
     </div>   
    </div>
    </div>
   

<!--     <script src="../js/jquery.js"></script>
     <script src="../js/bootstrap.min.js"></script>-->
    </body>
</html>
