function validString(str) 
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
	alert("Input cannot be empty")
	return false
	}
}