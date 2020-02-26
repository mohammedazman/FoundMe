
/*
  // Toggle the side navigation
 
  $("#sidebarToggle, #sidebarToggleTop").on('click', function(e) {
    $("body").toggleClass("sidebar-toggled");
    $(".sidebar").toggleClass("toggled");
    if ($(".sidebar").hasClass("toggled")) {
      $('.sidebar.collapse').collapse('hide');
    };
  });
*/
  

$(document).ready(function(){  
    load_notification();
});  


function load_notification(){
    $.ajax({
        url:"/notification",
        method:"POST",
  data:{method:"user"},
        success:function(data)
        {
    var notiInfo=JSON.parse(data);
    var html='';
    i=1;
     if(notiInfo.count>0)
       $('.noti-count').text(notiInfo.count);
    $.each(notiInfo.noti, function( index, row ) {
      if(i<4){
       if(row.status==1)
           html+=' <li class="notification-box item ">';
        else
           html+=' <li class="notification-box item not_read">';


                    
     html+='<strong class="noti-date">'+row.created_at+'</strong><br>'+
                        '<span style="font-size: 15px;" >'+
                        row.text+
                        '</span'+ 
                 ' </li>';
      }
     
      i++;
    });
    if(i==1){
     html+=' <li class="notification-box">'+
                    '<div class="row p-5">'+
                    'There is not any notification'
                   ' </div>'+
                 ' </li>';
    }
    else{
     html+='<li class="footer text-center">'+
                              '<a href="" class="text-blue">View All</a>'+
                          '</li>';
    }
    $('#noti-body').html(html);
  }


           });
}

function errMsg(msg){
   if(msg!=''){
$.toast({
   text: msg, // Text that is to be shown in the toast
   heading: 'Note', // Optional heading to be shown on the toast
   icon: 'info', // Type of toast icon
   showHideTransition: 'fade', // fade, slide or plain
   allowToastClose: true, // Boolean value true or false
   hideAfter: 6000, // false to make it sticky or number representing the miliseconds as time after which toast needs to be hidden
   stack: 5, // false if there should be only one toast at a time or a number representing the maximum number of toasts to be shown at a time
   position: 'bottom-right', // bottom-left or bottom-right or bottom-center or top-left or top-right or top-center or mid-center or an object representing the left, right, top, bottom values
   
   
   
   textAlign: 'left',  // Text alignment i.e. left, right or center
   loader: true,  // Whether to show loader or not. True by default
   loaderBg: '#ffffff',  // Background color of the toast loader
   beforeShow: function () {}, // will be triggered before the toast is shown
   afterShown: function () {}, // will be triggered after the toat has been shown
   beforeHide: function () {}, // will be triggered before the toast gets hidden
   afterHidden: function () {}  // will be triggered after the toast has been hidden
});
   }
}