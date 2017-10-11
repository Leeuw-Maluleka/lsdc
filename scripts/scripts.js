
8function validString(str) 
{
    if ((str.length == 0) || (str == 'none'))
        {return false}
    else
        {return true}
}
function checkformvalues(form)
{
	if(validString(form.StudentName.value) == false)
	{
	alert("Name field cannot be empty")
	return false
	}
	
	else if(validString(form.StudentIDno.value) == false)
	{
		alert("ID field cannot be empty")
		return false
	}
}