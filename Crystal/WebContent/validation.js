function validate(){
	var username = document.forms["Reg_Form"][ "username"].value;
	var mail = document.forms["Reg_Form"][ "email"].value;
	var pswr = document.forms["Reg_Form"][ "password"].value;

	
	
	
	
	 if(isAlphebatic(username))
 	         if(mailValid(mail))
	           if(passwrd(pswr,6))
	                 return true;
				    else
						return false;
	               else
						return false;
				    else
					      	
					
						return false;
		
	
}
	
	
	function isEmpty(elemValue,field){
		 if(elemValue==""  || elemValue == null){
			 alert("You cannot have " + field + " field empty");
			 return true;
		 }
		 else
			 return false;
	}
	
	function isAlphebatic(elemValue){
		var exp = /^[a-zA-Z]+$/;
		if(!isEmpty(elemValue, "UserName"))
		{
			if(elemValue.match(exp))
			{
				return true;
			}
			else
			{
               alert("Enter only text for you User Name");
               return false;			   
		  }
		}
		else
			return false;
	}

	
	function mailValid(elemValue)
{
    if(!isEmpty(elemValue,"Email"))
    {
        var atops = elemValue.indexOf("@");
        var dotops = elemValue.indexOf(".");
        
        if(atops <1 || dotops+2 >=elemValue.length || atops+2>dotops)
        {
            alert("Enter a valid Email Address");
            return false;
        }
        else
        {
            return true;
        }
    }
    else
    {
        return false;
    }
} 
	

	function passwrd(elemValue,min)
{
    var exp2=/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]+$/;

    if(!isEmpty(elemValue,"Password"))
    {
        if(elemValue.length>=min)
        {
            if(elemValue.match(exp2))
            {
                return true;
            }
            else
            {
                alert("Password should consist at least a upper case, lower case letter,special Character and number");
                return false;
            }
        }
        else
        {
            alert("Password should at least 6 characters long");
            return false;
        }
    }
    else
    {
        return false;
    }
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
