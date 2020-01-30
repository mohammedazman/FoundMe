function stringlength(inputText, minlength, maxlength)
              {
  var field = inputText.value;
  var mnlen = minlength;
  var mxlen = maxlength;
  var Errspan = inputText.name + 'Error';

  if (field.length < mnlen || field.length > mxlen)
  {
    document.getElementById(Errspan).innerHTML ="<i class='fas fa-exclamation-circle error-icon'></i>"+  'Please Enter between ' + mnlen + ' and ' + mxlen + ' characters';
    return false;
  } else
  {
    document.getElementById(Errspan).innerHTML='';
    return true;
  }
}

function preventSpace(inputText, minSpace, maxSpace)
             {
  var field = inputText.value;
  var mnChar = minSpace;
  var mxChar = maxSpace;
  var Errspan = inputText.name + 'Error';

  if (field.split(' ').length - 1 >= 1 && mnChar == 0)
   {
    document.getElementById(Errspan).innerHTML ="<i class='fas fa-exclamation-circle error-icon'></i>"+  'Space Not allowed in this field';
    return false;
  } else if (field.split(' ').length - 1 < mnChar || field.split(' ').length - 1 > mxChar)
  {
    document.getElementById(Errspan).innerHTML ="<i class='fas fa-exclamation-circle error-icon'></i>"+  'Please Enter the userid between ' + mnChar + ' and ' + mxChar + ' words';
    return false;
  } else
  {
    document.getElementById(Errspan).innerHTML='';
    return true;
  }
}

function allLetter(inputText)
              {
  var letters = /^[A-Za-z]+$/;
  var Errspan = inputText.name + 'Error';

  if (inputText.value.match(letters))
  {
    document.getElementById(Errspan).innerHTML='';
      return true;
  } else
  {
    document.getElementById(Errspan).innerHTML ="<i class='fas fa-exclamation-circle error-icon'></i>"+ 'This field accept alphabet characters only ' ;

      return false;
  }
}

                function Requirevalidation(inputText)
                {

  var empt =inputText.value;
  var Errspan = inputText.name + 'Error';

  if (empt == '')
  {
      document.getElementById(Errspan).innerHTML ="<i class='fas fa-exclamation-circle error-icon'></i>"+  'This feild is required ';
      return false;
  } else
  {
    document.getElementById(Errspan).innerHTML='';
      return true;
  }


                }
   function ValidateEmail(inputText)
                {
                var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                var Errspan = inputText.name + 'Error';


                if(inputText.value.match(mailformat))
                {
                  document.getElementById(Errspan).innerHTML='';
                  return true;
                }
                else
                {
                    document.getElementById(Errspan).innerHTML="<i class='fas fa-exclamation-circle error-icon'></i>"+ 'Invalid Email, please enter a valid email ';
                    return false;
                }
                }
    function phonenumber(inputText)
                {
                  var Errspan=inputText.name+'Error';

                  var phoneno =/^\+(?:[0-9] ?){6,14}[0-9]$/;
                  if(inputText.value.match(phoneno))
                     {
                      document.getElementById(Errspan).innerHTML='';

                     return true;
                   }
                   else
                     {
                      document.getElementById(Errspan).innerHTML="<i class='fas fa-exclamation-circle error-icon'></i>"+ 'Invalid phone number';
                      return false;
                     }
                }
  

   function confirmPassValidation(cpass,opass){

                    var Errspan=cpass.name+'Error';
                    var pass =opass.value.slice(0,cpass.value.length);

                    if (cpass.value!=pass) {
                        document.getElementById(Errspan).innerHTML="<i class='fas fa-exclamation-circle error-icon'></i>"+ "password not match";
                        return false;
                    }
                    else
                    {
                      document.getElementById(Errspan).innerHTML='';
                         return true;
                    }
				}
function validateDate(inputText){
  var Errspan=inputText.name+'Error';

  var CurrentDate = new Date();
  var GivenDate = new Date(inputText.value);
  
      if(GivenDate < CurrentDate){ 
              document.getElementById(Errspan).innerHTML="<i class='fas fa-exclamation-circle error-icon'></i>"+ "you must enter date greater than current date";
              return false;
          }
          else
          {
            document.getElementById(Errspan).innerHTML='';
               return true;
          }
}
