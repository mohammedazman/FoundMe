function stringlength(inputtxt, minlength, maxlength)
              {
  var field = inputtxt.value;
  var mnlen = minlength;
  var mxlen = maxlength;
  var Errspan = inputtxt.name + 'Error';

  if (field.length < mnlen || field.length > mxlen)
  {
    document.getElementById(Errspan).innerText = '';
    document.getElementById(Errspan).innerText = 'Please Enter between ' + mnlen + ' and ' + mxlen + ' characters';
    return false;
  } else
  {
    document.getElementById(Errspan).innerText = '';
    return true;
  }
}

function preventSpace(inputtxt, minSpace, maxSpace)
             {
  var field = inputtxt.value;
  var mnChar = minSpace;
  var mxChar = maxSpace;
  var Errspan = inputtxt.name + 'Error';

  if (field.split(' ').length - 1 >= 1 && mnChar == 0)
   {
    document.getElementById(Errspan).innerText = 'Space Not allowed';
    return false;
  } else if (field.split(' ').length - 1 < mnChar || field.split(' ').length - 1 > mxChar)
  {
    document.getElementById(Errspan).innerText = 'Please Enter the userid between ' + mnChar + ' and ' + mxChar + ' words';
    return false;
  } else
  {
    document.getElementById(Errspan).innerText = '';
    return true;
  }
}

function allLetter(inputtxt)
              {
  var letters = /^[A-Za-z]+$/;
  var Errspan = inputtxt.name + 'Error';

  if (inputtxt.value.match(letters))
  {
      document.getElementById(Errspan).innerText = '';
      return true;
  } else
  {
    document.getElementById(Errspan).innerText = 'Please Enter alphabet characters only' ;

      return false;
  }
}

                function Requirevalidation(inputtxt)
                {

  var empt = document.forms['form1']['un'].value;
  var Errspan = inputtxt.name + 'Error';

  if (empt == '')
  {
      document.getElementById(Errspan).innerText = 'This feil is required ';
      return false;
  } else
  {
      document.getElementById(Errspan).innerText = '';
      return true;
  }


                }
   function ValidateEmail(inputText)
                {
                var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                var Errspan=inputtxt.name+'Error';

                if(inputText.value.match(mailformat))
                {
                    document.getElementById(Errspan).innerText='Invalid Email ';
                    return true;
                }
                else
                {
                    document.getElementById(Errspan).innerText='';
                    return false;
                }
                }
                function phonenumber(inputtxt)
                {
                    var Errspan=inputtxt.name+'Error';

                var phoneno = /^\d{10}$/;
                if(inputtxt.value.match(phoneno))
                        {
                            document.getElementById(Errspan).innerText='only number allowed here';
                             return true;
                        }
                    else
                        {
                            document.getElementById(Errspan).innerText='';
                             return false;
                        }
                }


   function confirmPassValidation(cpass,opass){

                    var Errspan=cpass.name+'Error';
                    var pass =opass.value.slice(0,cpass.value.length);

                    if (cpass.value!=pass) {
                        document.getElementById(Errspan).innerText="password not match";
                        return false;
                    }
                    else
                    {
                         document.getElementById(Errspan).innerText="";
                    }
				}
