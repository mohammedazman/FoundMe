// scroling js
jQuery_1_3_2(document).ready(function(){
    jQuery_1_3_2(window).scroll(function(){
        var scroll = jQuery_1_3_2(window).scrollTop();
        if (scroll > 200) {
          jQuery_1_3_2(".chang-color").css("background" , "#fff");
          jQuery_1_3_2(".chang-color").css("box-shadow" , "rgba(151, 152, 153, 0.15) 0px -11px 10px 10px");
          jQuery_1_3_2(".nav-link-color").css("color" , "rgb(116, 116, 116)");
          jQuery_1_3_2(".fa-bell").css("color" , "rgb(116, 116, 116)");
          jQuery_1_3_2(".logo").attr("src","/images/home/fundmee.png");
          jQuery_1_3_2(".fa-bars").css("color","#605f61");
        }
     
        else if(scroll < 200){
            jQuery_1_3_2(".chang-color").css("background" , "none");  
          jQuery_1_3_2(".chang-color").css("box-shadow" , "unset");
          jQuery_1_3_2(".nav-link-color").css("color" , "#fff");
          jQuery_1_3_2(".fa-bell").css("color" , "#fff");  
          jQuery_1_3_2(".logo").attr("src","/images/home/logo.png");
          



        }
    })
  })


//   //scroll down
//   jQuery_1_3_2(function() {
//     jQuery_1_3_2('a[href*=#]').on('click', function(e) {
//       e.preventDefault();
//       jQuery_1_3_2('html, body').animate({ scrollTop: jQuery_1_3_2(jQuery_1_3_2(this).attr('href')).offset().top}, 500, 'linear');
//     });
//   });


  //profile change photo 
  jQuery_1_3_2(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                jQuery_1_3_2('.profile-pic').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    jQuery_1_3_2(".file-upload").on('change', function(){
        readURL(this);
    });
    
    jQuery_1_3_2(".upload-button").on('click', function() {
       jQuery_1_3_2(".file-upload").click();
    });
});

// tiny

tinymce.init({
    selector: "#mceEditor",
    theme: "modern",
    plugins: [
        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen",
        "insertdatetime media nonbreaking save table contextmenu directionality",
        "emoticons template paste textcolor colorpicker textpattern imagetools"
    ],
    toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
    toolbar2: "print preview media | forecolor backcolor emoticons",
    image_advtab: true,
    templates: [
        {title: 'Test template 1', content: 'Test 1'},
        {title: 'Test template 2', content: 'Test 2'}
    ]
});

// tiny

//show img selected start
jQuery_1_3_2(function() {
    // Multiple images preview in browser
    var imagesPreview = function(input, placeToInsertImagePreview) {

        if (input.files) {
            var filesAmount = input.files.length;

            for (i = 0; i < filesAmount; i++) {
                var reader = new FileReader();

                reader.onload = function(event) {
                    jQuery_1_3_2(jQuery_1_3_2.parseHTML('<img class="img-up">')).attr('src', event.target.result).appendTo(placeToInsertImagePreview);
                }

                reader.readAsDataURL(input.files[i]);
            }
        }

    };

    jQuery_1_3_2('#gallery-photo-add').on('change', function() {
        imagesPreview(this, 'div.gallery');
    });
});

//show img selected end


//////////////////////////////

(function (jQuery_1_3_2) {
    "use strict";


    /*==================================================================
    [ Focus input ]*/
    jQuery_1_3_2('.input100').each(function(){
        jQuery_1_3_2(this).on('blur', function(){
            if(jQuery_1_3_2(this).val().trim() != "") {
                jQuery_1_3_2(this).addClass('has-val');
            }
            else {
                jQuery_1_3_2(this).removeClass('has-val');
            }
        })    
    })
  
  
    /*==================================================================
    [ Validate ]*/
    var input = jQuery_1_3_2('.validate-input .input100');

    jQuery_1_3_2('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    jQuery_1_3_2('.validate-form .input100').each(function(){
        jQuery_1_3_2(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (input) {
        if(jQuery_1_3_2(input).attr('type') == 'email' || jQuery_1_3_2(input).attr('name') == 'email') {
            if(jQuery_1_3_2(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)jQuery_1_3_2/) == null) {
                return false;
            }
        }
        else {
            if(jQuery_1_3_2(input).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = jQuery_1_3_2(input).parent();

        jQuery_1_3_2(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = jQuery_1_3_2(input).parent();

        jQuery_1_3_2(thisAlert).removeClass('alert-validate');
    }
    
    /*==================================================================
    [ Show pass ]*/
    var showPass = 0;
    jQuery_1_3_2('.btn-show-pass').on('click', function(){
        if(showPass == 0) {
            jQuery_1_3_2(this).next('input').attr('type','text');
            jQuery_1_3_2(this).find('i').removeClass('zmdi-eye');
            jQuery_1_3_2(this).find('i').addClass('zmdi-eye-off');
            showPass = 1;
        }
        else {
            jQuery_1_3_2(this).next('input').attr('type','password');
            jQuery_1_3_2(this).find('i').addClass('zmdi-eye');
            jQuery_1_3_2(this).find('i').removeClass('zmdi-eye-off');
            showPass = 0;
        }
        
    });


})(jQuery);




// faqs

const items = document.querySelectorAll(".accordion a");

function toggleAccordion(){
  this.classList.toggle('active');
  this.nextElementSibling.classList.toggle('active');
}

items.forEach(item => item.addEventListener('click', toggleAccordion));
// faqs